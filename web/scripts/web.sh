cd /opt/apache-tomcat-7.0.90/bin
sudo ./shutdown.sh 
cd /opt/apache-tomcat-7.0.90/webapps
sudo rm -rf LoginWebApp.war
sudo rm -rf LoginWebApp
sudo curl -uadmin:AP44dJSPWhrSgmG8 -O "https://cloudartifactory.jfrog.io/cloudartifactory/example-repo-local/LoginWebApp.war"
cd /opt/apache-tomcat-7.0.90/bin
sudo ./startup.sh
