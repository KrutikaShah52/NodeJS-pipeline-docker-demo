pipeline{
    agent { label 'docker' }
    stages{
        
        environment {
            registry = "krutika1052/nodejs_docker_example"
            // registryCredential = 'dockerhub'
        }

        stage('Checkout'){
            steps{
                checkout scm
            }
        }

        stage('Build Docker image'){
            steps{
                sh 'docker build -t node-docker-demo'
            }
        }

        stage('Push Image on Docker-hub'){
            steps{
                withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
                    sh 'docker push krutika1052/nodejs_docker_example'
                }
            }
        }
    }
}