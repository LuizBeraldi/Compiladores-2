"""
Script para benchmark do gzip compilado com gcc e clang.
Gera arquivos de teste (se não existirem) e, para cada arquivo,
roda N iterações passando o conteúdo via stdin para o gzip, medindo o tempo.
"""

import os
import subprocess
import time
import mmap

# Caminhos para os executáveis do gzip compilados com gcc e clang
GZIP_GCC_PATH = "./gzip_gcc"
GZIP_CLANG_PATH = "./gzip_clang"

# Diretório onde os arquivos de teste serão criados
TEST_DIR = "test_files"
os.makedirs(TEST_DIR, exist_ok=True)

# Tamanhos de teste em bytes
SIZES = {
    "5GB": 5 * 1024**3,
    "1GB": 1 * 1024**3,
    "500MB": 500 * 1024**2,
    "100MB": 100 * 1024**2,
}

# Número de iterações para cada teste
ITERATIONS = 3

# Tamanho dos chunks para escrita/leitura (ex.: 10 MB para gerar os arquivos)
CHUNK_SIZE_WRITE = 10 * 1024 * 1024
# Tamanho dos chunks para enviar para o gzip
CHUNK_SIZE_PIPE = 1024 * 1024  # 1 MB


def gerar_arquivo_teste(nome_arquivo: str, tamanho: int):
    """
    Gera um arquivo com dados aleatórios (usando os.urandom) do tamanho especificado,
    escrevendo em chunks para não consumir muita memória.
    Se o arquivo já existir e tiver o tamanho esperado, não recria.
    """
    if os.path.exists(nome_arquivo) and os.path.getsize(nome_arquivo) == tamanho:
        print(f"Arquivo {nome_arquivo} já existe com o tamanho esperado.")
        return

    print(f"Criando arquivo {nome_arquivo} de tamanho {tamanho} bytes...")
    with open(nome_arquivo, "wb") as f:
        bytes_escritos = 0
        while bytes_escritos < tamanho:
            tamanho_restante = tamanho - bytes_escritos
            tamanho_chunk = min(CHUNK_SIZE_WRITE, tamanho_restante)
            # Gerando chunk de dados aleatórios
            f.write(os.urandom(tamanho_chunk))
            bytes_escritos += tamanho_chunk
            # Opcional: imprimir progresso
            if bytes_escritos % (100 * 1024 * 1024) < CHUNK_SIZE_WRITE:
                print(f"  ... {bytes_escritos / (1024**2):.0f} MB escritos")
    print(f"Arquivo {nome_arquivo} criado.")


def chunk_generator(mmap_obj, chunk_size=CHUNK_SIZE_PIPE):
    """Gera chunks do objeto mapeado."""
    file_size = mmap_obj.size()
    offset = 0
    while offset < file_size:
        yield mmap_obj[offset : offset + chunk_size]
        offset += chunk_size


def run_benchmark_on_file(executable: str, arquivo: str) -> float:
    """
    Executa o gzip (passando o arquivo via stdin) e retorna o tempo gasto.
    O arquivo é mapeado na memória e enviado em chunks para o processo.
    """
    comando = [executable, "-c"]  # '-c' faz o gzip escrever a saída para stdout
    start = time.perf_counter()

    with open(arquivo, "rb") as f:
        # Mapeia o arquivo para não carregar tudo de uma vez na memória
        with mmap.mmap(f.fileno(), 0, access=mmap.ACCESS_READ) as mm:
            # Inicia o processo; redireciona stdout para DEVNULL para não salvar a saída
            proc = subprocess.Popen(
                comando, stdin=subprocess.PIPE, stdout=subprocess.DEVNULL
            )

            try:
                for chunk in chunk_generator(mm):
                    proc.stdin.write(chunk)
                proc.stdin.close()
            except Exception as e:
                proc.kill()
                raise e

            proc.wait()

    end = time.perf_counter()
    return end - start


def benchmark():
    # Gera os arquivos de teste (se necessário)
    arquivos_teste = {}
    for label, tamanho in SIZES.items():
        caminho = os.path.join(TEST_DIR, f"teste_{label}.bin")
        gerar_arquivo_teste(caminho, tamanho)
        arquivos_teste[label] = caminho

    # Dicionário para armazenar os resultados:
    # resultados[arquivo][executavel] = [lista de tempos]
    resultados = {}

    executaveis = {
        "gcc": GZIP_GCC_PATH,
        "clang": GZIP_CLANG_PATH,
    }

    for label, caminho in arquivos_teste.items():
        print(f"\nTeste com arquivo {label} ({caminho})")
        resultados[label] = {}
        for key, exe in executaveis.items():
            print(f"  Executando {key} ({exe}):")
            tempos = []
            for i in range(ITERATIONS):
                print(f"    Iteração {i+1}/{ITERATIONS}...")
                t = run_benchmark_on_file(exe, caminho)
                print(f"      Tempo: {t:.3f} s")
                tempos.append(t)
            media = sum(tempos) / len(tempos)
            resultados[label][key] = media
            print(f"  Tempo médio para {key}: {media:.3f} s")

    # Exibe um resumo final
    print("\nResumo dos tempos médios:")
    for label in SIZES.keys():
        print(f"Arquivo {label}:")
        for key in executaveis.keys():
            tempo = resultados[label][key]
            print(f"  {key}: {tempo:.3f} s")
    return resultados


if __name__ == "__main__":
    benchmark()
