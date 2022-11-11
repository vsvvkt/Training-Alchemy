FROM httpd
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install git -y
RUN apt-get install wget -y
RUN apt-get install unzip -y
RUN git clone https://github.com/vsvvkt/AzureProject1.git
RUN cp -rp AzureProject1/* htdocs/
CMD httpd -D FOREGROUND
