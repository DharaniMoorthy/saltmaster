if [ -d "/opt/clone/LoginApplication" ]
then
	echo "folder found"
	cd /opt/clone/LoginApplication
	sudo git pull origin master
	sudo mvn clean package
	curl -uadmin:AP44dJSPWhrSgmG8 -T /opt/clone/LoginApplication/target/LoginWebApp.war "https://cloudartifactory.jfrog.io/cloudartifactory/example-repo-local/"

else 
	echo "folder not found"
	sudo mkdir -p /opt/clone
	cd /opt/clone
	sudo git clone https://github.com/DharaniMoorthy/LoginApplication.git
	cd /opt/clone/LoginApplication
   	sudo mvn clean package	
	curl -uadmin:AP44dJSPWhrSgmG8 -T /opt/clone/LoginApplication/target/LoginWebApp.war "https://cloudartifactory.jfrog.io/cloudartifactory/example-repo-local/"
fi 
