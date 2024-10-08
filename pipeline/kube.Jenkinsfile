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
                sh "docker build -t chentochea/kube-register:v1 ."
            }
        }

        stage("Push Image") {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-hub', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME')]) {
                    sh "docker login -u $USERNAME -p $PASSWORD"
                    sh "docker push chentochea/kube-register:v1 "
                }
            }
        }

        stage("Verify Script Path") {
            steps {
                sh "ls -l $WORKSPACE/kubernetes"
            }
        }

        stage("Deploy Service") {
            steps {
                sh """
                    ansible-playbook ansible/deploy.yml \
                    -i ansible/inventory \
                    -e workspace=$WORKSPACE
                """
            }
        }
    }
}
