import re

def validar_email(email):
    """
    Valida um e-mail usando regex.
    
    Regras:
    - Deve ter um formato válido, como "usuario@dominio.com" ou "usuario@dominio.com.br"
    - O domínio deve ter pelo menos um ponto, podendo ter mais (ex: empresa.com.br)
    - Permite letras, dígitos, underscore, ponto e hífen na parte local (antes do @)
    """
    padrao_email = r'^[\w\.-]+@[a-zA-Z\d-]+(\.[a-zA-Z]{2,})+$'
    return bool(re.match(padrao_email, email))

def validar_senha(senha):
    """
    Valida uma senha forte usando regex.
    
    Regras:
    - Pelo menos 8 caracteres
    - Pelo menos uma letra maiúscula
    - Pelo menos uma letra minúscula
    - Pelo menos um dígito
    - Pelo menos um caractere especial dentre @$!%*?&
    - A senha só pode conter letras, dígitos e os caracteres especiais especificados.
    """
    padrao_senha = r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$'
    return bool(re.match(padrao_senha, senha))
