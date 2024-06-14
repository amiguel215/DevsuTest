#Documentacion Node.js/Docker https://docs.docker.com/language/nodejs/containerize/

#Imagen oficial Node.js https://github.com/nodejs/docker-node/blob/416397c67bb40e186b621d7dc12deb6b0a1ce34e/18/alpine3.20/Dockerfile
FROM node:18.20-alpine

#Establecer el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

#Copiar los archivos package.json y package-lock.json con el comodin (*), hacia el directorio actual
COPY package*.json ./

#Instalar dependencias
RUN npm install

#Copiar los otros archivos de la app. Recordar que se hace por separado para optimizar el proceso de construccion de la imagen Docker
COPY . .

#Definir la variable de entorno para luego exponer el puerto deseado
ENV PORT=8000

#Comando para iniciar la app
CMD [ "npm", "start", "--port", "$PORT" ]

# Healthcheck
HEALTHCHECK --interval=30s \
            --timeout=3s \
            --start-period=5s \
            --retries=3 \
            CMD curl -f http://localhost:$PORT/ || exit 1