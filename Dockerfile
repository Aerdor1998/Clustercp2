# Use a imagem Python oficial
FROM python:3.9-slim

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo requirements.txt e instale as dependências
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copie o código fonte para o diretório de trabalho do contêiner
COPY . .

# Comando para executar o script Python
CMD ["python", "pythonfile.py"]
