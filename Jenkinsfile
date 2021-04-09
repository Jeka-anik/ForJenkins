
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
                dockerfile {
                    filename 'Dockerfile'
                    label 'my-defined-label'
                  //  registryUrl 'https://myregistry.com/'
                    registryCredentialsId 'git'
                }
            }
            steps {
                sh 'echo "hello"'
            }
        }
  }
}
