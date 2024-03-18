FROM nginx

COPY default.conf /etc/nginx/conf.d/default.conf

COPY privacy-policy.md /root/privacy-policy.md

RUN cp /root/privacy-policy.md /usr/share/nginx/html/privacy-policy.md

RUN apt update 
RUN apt install python3-markdown -y 
RUN python3 -m markdown /root/privacy-policy.md -f md.html

RUN echo ' <!DOCTYPE html> \n\
<html> \n\
<head> \n\
<meta charset="UTF-8"> \n\
<title>Datenschutzerklärung</title> \n\
<style> \n\
  * {font-family: sans-serif;} \n\
</style> \n\
</head> \n\
<body>' >> index.html
RUN cat md.html >> index.html
RUN echo '</body> \n\
</html>' >> index.html

RUN mv index.html /usr/share/nginx/html/index.html