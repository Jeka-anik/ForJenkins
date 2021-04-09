
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
    stage('Building image') {
      steps{
        script {
          // This step should not normally be used in your script. Consult the inline help for details.
          withDockerContainer('jekanik/myhello:tagname'){
          // some block
          }
         }
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
