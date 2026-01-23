FROM nginx:alpine

# Remove default config
RUN rm /etc/nginx/conf.d/default.conf

# Custom nginx config (listens on 8080)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy website files
COPY . /usr/share/nginx/html

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
