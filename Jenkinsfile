
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
                sh "docker build -f Dockerfile . -t project-build:${BUILD_ID}"
            }
        }

      stage("Registry") {
            steps {
                // This step should not normally be used in your script. Consult the inline help for details.
                withDockerRegistry(credentialsId: 'git', url: 'https://hub.docker.com/repository/docker/jekanik/project-build') {
               // some block
                }
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
