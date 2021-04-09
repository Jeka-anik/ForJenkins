
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
  
  stage("Prepare build image") {
            steps {
                sh "docker build -f Dockerfile . -t project-build:${BUILD_ID}"
            }
        }

        stage("Build project") {
            agent {
                docker {
                    image "project-build:${BUILD_ID}"
                }
            }
            steps {
                sh 'echo "hello"'
            }
        }
  }
}
