pipeline {
    agent { label 'main' }

    tools {
        maven "3.6.3"
    }

    stages {
        stage("clean package") {
            steps {
                sh "mvn clean package"
            }
        }
        stage("build image") {
            steps {
                // Add your build image steps here
            }
        }
    }
}
