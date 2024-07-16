FROM nginx:alpine
  
COPY index.html /usr/share/nginx/html/index.html
COPY image /usr/share/nginx/html/image
COPY style.css /usr/share/nginx/html/style.css
COPY nginx.conf /etc/nginx/nginx.conf


EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]