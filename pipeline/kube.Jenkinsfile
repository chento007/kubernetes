pipeline{
    agent { label 'main'}

    tools{
        maven "3.6.3"
    }

    stages{
        stage("build image"){

            stage("clean package"){
                sh "mvn clean package"
            }

        }
    }

}