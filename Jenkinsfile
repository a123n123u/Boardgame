pipeline {
    agent any
    tools {
        maven 'mvn-3'  
        jdk 'jdk17'
    }
    stages {
        stage('Compile') {
            steps {
               sh 'mvn compile'
            }
        }
        stage('Build package') {
            steps {
                 sh 'mvn package' 
            }
        }
    }
}
