node{
    def app
    
    environment {
        registry = "krutika1052/nodejs_docker_example"
        // registryCredential = 'dockerhub'
    }

    stage('Checkout'){
        checkout scm
    }

    stage('Build Docker image'){
         app = docker.build("nodejs-docker-app")
    }

    stage('Push Image on Docker-hub'){
        steps{
            withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
                sh 'docker push krutika1052/nodejs_docker_example'
            }
        }
    }
}