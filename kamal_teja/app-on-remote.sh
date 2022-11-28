#!/bin/bash
ssh 'root@20.193.143.139' yum install wget java-1.8.0-openjdk-devel git maven -y
ssh 'root@20.193.143.139' wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.82/bin/apache-tomcat-8.5.82.tar.gz
ssh 'root@20.193.143.139' tar -xvf apache-tomcat-8.5.82.tar.gz
ssh 'root@20.193.143.139' sh apache-tomcat-8.5.82/bin/startup.sh
ssh 'root@20.193.143.139' git clone https://github.com/ShailAdmin/MaventestCode.git
ssh 'root@20.193.143.139' cp -rp MaventestCode/* .
ssh 'root@20.193.143.139' mvn validate
ssh 'root@20.193.143.139' mvn compile
ssh 'root@20.193.143.139' mvn test
ssh 'root@20.193.143.139' mvn package
ssh 'root@20.193.143.139' mvn verify
ssh 'root@20.193.143.139' mvn install
ssh 'root@20.193.143.139' rm -rf apache-tomcat-8.5.82/webapps/ROOT
ssh 'root@20.193.143.139' cp -rp target/RegistrationForm.war apache-tomcat-8.5.82/webapps/ROOT.war
