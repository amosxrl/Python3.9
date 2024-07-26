# Usar uma imagem base Python oficial. Altere a versão conforme necessário.
FROM python:3.9-slim

# Define o mantenedor do Dockerfile
LABEL maintainer="amosxrl@outlook.com"

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Atualizar o pip para a versão mais recente
RUN pip install --upgrade pip

# Instalar virtualenv
RUN pip install virtualenv

# Criar um ambiente virtual
RUN virtualenv venv

# Copiar apenas os arquivos necessários para instalar dependências
COPY requirements.txt ./

# Instalar as dependências no ambiente virtual
RUN /app/venv/bin/pip install --no-cache-dir -r requirements.txt

# Copiar o restante do código da aplicação
COPY . .

# Comando para rodar a aplicação. Pode ser ajustado conforme a sua aplicação.
CMD ["/app/venv/bin/python", "main.py"]
