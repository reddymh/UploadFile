pipeline {
    agent any
    tools { 
        maven 'Maven_3.2.5' 
        jdk 'JDK8_131' 
    }
    stages {
        stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                ''' 
            }
        }
stage ('Checkout') {
            steps {
               echo " Checkout"
            }
        }
        stage ('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage ('Sonar'){
            steps{
                sh 'mvn sonar:sonar -Dsonar.host.url=http://sonar:9000 -Dsonar.login=852d6cd2d9ecb6cc743db64527ad8e7c6579bedf'
            }
            
        }
        stage ('Build Docker Image'){
            steps{
				echo "######################### Building Docker Image for JavaWebApp #############################"
                sh 'docker build -t tomcatjavaapp:1.0 .'
				echo "######################### Built Docker Image for JavaWebApp Successfully #############################"
            }
            
        }
		stage ('Deploy Docker Container On Dev Env'){
            steps{
				echo " #################### Stopping JavaWebApp Container #######################"
				sh ' docker stop JavaWebapp '
				echo " #################### Stopped JavaWebApp Container ########################"
				echo " #################### Removing JavaWebApp Container #######################"
				sh ' docker rm JavaWebapp "
				echo " #################### Removed JavaWebApp Container #######################"
				echo " #################### Starting JavaWebApp Container #######################"
                sh ' docker run -p 8086:8080 -d --name JavaWebapp -it tomcatjavaapp:1.0'
				echo " #################### Started JavaWebApp Container #######################"
				echo " #################### JavaWebApp URL : http://blrrnd.corp.tangoe.com:8086/uploadfile #######################"
            }
            
        }
    
	
}
