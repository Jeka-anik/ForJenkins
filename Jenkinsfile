
pipeline {
  environment {
    imagename = "jekanik/project-build"
    registryCredential = 'git'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        checkout scm 

      }
    }
  
  stage("Prepare build image") {
            steps {
                sh "docker build -f Dockerfile . -t jekanik/project-build:${BUILD_ID}"
            }
        }

   stage("Build project") {
            agent {
                docker {
                    image "jekanik/project-build:${BUILD_ID}"
                    registryUrl 'https://hub.docker.com/repository/docker/jekanik/project-build'
                    registryCredentials 'git'
                }
            }
            steps {
                sh 'echo "hello"'
            }
        }
  }
}
