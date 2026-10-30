FROM nginx:alpine

COPY . /usr/share/nginx/html
# Удаляем лишние файлы, чтобы они не были доступны из веба
RUN rm -f /usr/share/nginx/html/Dockerfile /usr/share/nginx/html/docker-compose.yml
EXPOSE 80