# Imagem base derivada do Node
FROM node

# Diretório de trabalho dentro da imagem
WORKDIR /app

# Copia todo o projeto para dentro do container
COPY . /app

# Instala as dependências do projeto
RUN npm install

# Comando para iniciar o microsserviço de Shipping
CMD ["node", "/app/services/shipping/index.js"]
