pipeline {
  agent any
   triggers {
    GenericTrigger causeString: 'Generic Cause', regexpFilterExpression: '', regexpFilterText: '', token: '123', tokenCredentialId: ''
  }
  stages {
    stage('First step') {
      steps {
        sh 'echo "Hello "'
      }
    }
  }
}
