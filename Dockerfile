# Imagem base leve
FROM python:3.9-slim

# Diretório padrão dentro do container
WORKDIR /app

# Copia os arquivos necessários
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

# Expõe a porta usada pela aplicação (5000)
EXPOSE 5000

# Comando para iniciar a aplicação
CMD ["python", "app.py"]