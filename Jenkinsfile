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
        docker.withRegistry('https://krutika1052', 'dockerhub'){
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}