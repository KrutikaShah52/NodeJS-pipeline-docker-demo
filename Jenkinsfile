node{
    def app
    
    environment {
        registry = "krutika1052/nodejs_docker_example"
        registryCredential = '57f6cf93-47c1-48ed-9506-cb6e190354b1'
    }

    stage('Checkout'){
        checkout scm
    }

    stage('Build Docker image'){
         app = docker.build("nodejs-docker-app")
    }

    stage('Push Image on Docker-hub'){
        docker.withRegistry('https://registry.hub.docker.com', 'registryCredential'){
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}