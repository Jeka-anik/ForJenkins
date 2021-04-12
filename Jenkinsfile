
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

                }
            }
            steps {
                              // This step should not normally be used in your script. Consult the inline help for details.
              withDockerRegistry(credentialsId: 'git', url: 'jekanik/project-build') {
                  // some block
              }
            }
        }
  }
}
