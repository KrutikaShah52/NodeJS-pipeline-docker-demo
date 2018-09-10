node{
    def app
    
    stage('Checkout'){
        checkout scm
    }

    stage('Build Docker image'){
         app = docker.build("nodejs-docker-app")
    }
}