node{
    def app
    def tag = "latest"

    stage('Checkout'){
        checkout scm
    }

    stage('Build Docker image'){
         app = docker.build("nodejs-docker-app")
    }

    stage('docker build/push') {
        docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
            app = docker.build("krutika1052/nodejs_docker_example:${tag}", '.').push()
     }
   }
}