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
        def script_bash = libraryResource 'bash ./script.sh'
      }
    }
  }
}
