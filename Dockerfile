FROM httpd:latest
WORKDIR /usr/local/apache2/htdocs
COPY /var/lib/jenkins/workspace/demo2/index.html /usr/local/apache2/htdocs
