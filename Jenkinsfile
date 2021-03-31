pipeline {
  agent any
   triggers {
    GenericTrigger causeString: 'Generic Cause', regexpFilterExpression: '', regexpFilterText: '', token: '123', tokenCredentialId: ''
  }
  stages {
    stage('Some step') {
      steps {
        sh "echo $ref"
      }
    }
  }
}
