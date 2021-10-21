FROM tomcat:8.0
WORKDIR webapps
COPY webapp/target/webapp.war .
RUN rm -rf ROOT && mv webapp.war ROOT.war
ENTRYPOINT ["sh", "/usr/local/tomcat/bin/startup.sh"]
