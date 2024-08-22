pipeline {
    agent { label 'main' }

    tools {
        maven "3.6.3"
    }

    stages {
        stage("build image") {
            steps {
                stage("clean package") {
                    steps {
                        sh "mvn clean package"
                    }
                }
            }
        }
    }
}
