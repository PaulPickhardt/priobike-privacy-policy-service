FROM nginx

COPY privacy-policy.md /root/privacy-policy.md

RUN apt update 
RUN apt install python3-markdown -y 
RUN python3 -m markdown /root/privacy-policy.md -f md.html

RUN echo ' <!DOCTYPE html> \n\
<html> \n\
<head> \n\
<meta charset="UTF-8"> \n\
<title>Datenschutzerklärung</title> \n\
</head> \n\
<body>' >> index.html
RUN cat md.html >> index.html
RUN echo '</body> \n\
</html>' >> index.html

RUN mv index.html /usr/share/nginx/html/index.html