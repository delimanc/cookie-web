FROM nginx:alpine

# Copy website files
COPY . /usr/share/nginx/html

EXPOSE 8080
CMD [ "node", "src/server.js" ]
