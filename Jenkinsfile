pipeline{
    agent any
    
    tools{
        maven "Maven3"
        jdk "JDK17"
        
    }
    
    stages{
        stage('Build') {
            steps {
                git branch: 'main', url: 'https://github.com/bhavya123654/bhavithareddylab3.git'
                
                bat "mvn clean compile"
            }
        }
    }
}  
