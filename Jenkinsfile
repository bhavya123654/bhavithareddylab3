pipeline{
    agent any
    
    tools{
        maven "Maven3"
      
        
    }
    
    stages{
        stage('Checkout') {
            steps {
            checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/bhavya123654/bhavithareddylab3.git']])

            }
        }

         stage('Build') {
                    steps {
                    bat "mvn clean package"

                    }
                }
         stage('Build docker image') {
                    steps {
                    bat "docker build -t bhavitha111234/maven:v1 ."

                    }
                }
    }
}  
