FROM nginx:alpine

# Copy website assets to nginx html directory
COPY . /usr/share/nginx/html

# Cloud Run defaults to port 8080. Update default nginx port to 8080.
RUN sed -i 's/listen       80;/listen 8080;/g' /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
