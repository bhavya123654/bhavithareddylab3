pipeline{
    agent any
    
    tools{
        maven "Maven3"
        jdk "JDK17"
        
    }
    
    stages{
        stage('Build') {
            steps {
                git branch: 'main', url: 'https://github.com/JaneSolema/COMP367-LabAssignment2'
                
                bat "mvn clean compile"
            }
        }
    }
}  
