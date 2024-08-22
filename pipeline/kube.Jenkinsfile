pipeline {
    agent any

    tools {
        maven "3.6.3"
    }

    stages {
        stage("clean package") {
            steps {
                sh "mvn clean package"
            }
        }

        stage("Build") {
            steps {
                sh "docker build -t chento/kube-register:1.1.1 ."
            }
        }
        
    }
}
