import pytest
from hypothesis import given, strategies as st
from validador import validar_email, validar_senha

# Teste parametrizado para e-mails
@pytest.mark.parametrize("email, esperado", [
    ("usuario@gmail.com", True),
    ("user.name@empresa.com.br", True),
    ("email@sub.dominio.org", True),
    ("nome123@dominio.net", True),
    ("invalido@dominio", False),    # Sem TLD (.com, .org)
    ("@semusuario.com", False),     # Falta o nome do usuário
    ("usuario@.com", False),        # Domínio inválido
    ("user@com", False),            # Falta ponto no domínio
    ("user@empresa..com", False),   # Dois pontos consecutivos
])
def test_validar_email(email, esperado):
    assert validar_email(email) == esperado

# Teste parametrizado para senhas
@pytest.mark.parametrize("senha, esperado", [
    ("Senha123!", True),  # Válida
    ("Teste@2024", True),  # Válida
    ("fraca", False),      # Menos de 8 caracteres
    ("SENHA123", False),   # Sem minúsculas e caracteres especiais
    ("senha123", False),   # Sem maiúscula e especial
    ("SenhaCurta@", False),# Sem número
    ("SemCaracterEspecial123", False),  # Falta caractere especial
])
def test_validar_senha(senha, esperado):
    assert validar_senha(senha) == esperado
