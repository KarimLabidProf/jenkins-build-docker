FROM nginx:latest
RUN sed -i 's/nginx/Formation_Devops/g' /usr/share/nginx/html/index.html
EXPOSE 80
