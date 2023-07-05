# Etapa de construcción
FROM node:18-alpine AS build
WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci

COPY . .
RUN npm run build --prod

# Etapa de Produccion
FROM nginx:alpine
ARG APP_NAME
COPY --from=build /app/dist/${APP_NAME}/ /usr/share/nginx/html

# Configuración para modo de producción
CMD ["nginx", "-g", "daemon off;"]

# Verificación periódica de la salud del contenedor
HEALTHCHECK --interval=30s --timeout=5s CMD wget --quiet --tries=1 --spider http://localhost/ || exit 1

# Exponer el puerto 80 para recibir solicitudes externas
EXPOSE 80

# Etiqueta para identificar y versionar la imagen
LABEL version="1.0.0"
