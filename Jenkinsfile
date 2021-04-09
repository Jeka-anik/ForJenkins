
pipeline {
  environment {
    imagename = "jekanik/task4"
    registryCredential = 'jekanik-dockerhub'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        checkout scm 

      }
    }
   stage("Build project") {
    agent {
        docker {
            image "project-build:${DOCKER_IMAGE_BRANCH}"
            reuseNode true
            label "build-image"
        }
    }
    steps {
      sh 'echo "Hello "'
    }
}
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push("$BUILD_NUMBER")
             dockerImage.push('latest')

          }
        }
      }
    }
  }
}
