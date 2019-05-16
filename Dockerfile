FROM tomcat:latest
RUN rm -rf /usr/local/tomcat/webapps/*
copy  target/org.web.war  /usr/local/tomcat/webapps
RUN unzip /usr/local/tomcat/webapps/org.web.war -d /usr/local/tomcat/webapps/ROOT
RUN rm /usr/local/tomcat/webapps/org.web.war
