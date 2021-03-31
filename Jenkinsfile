pipeline {
  agent any
  stages {
    stage('First step') {
      steps {
        sh 'echo "Hello "'
      }
    }
    stage('Ololo step') {
      steps {
        sh 'ls -al'
      }
    }
    stage('Two step') {
      steps {
        sh 'bash ./script.sh'
      }
    }
  }
}
