pipeline {
  agent any
  stages {
    stage('First step') {
      steps {
        sh 'echo "Hello "'
      }
    }
    stage('Two step') {
      steps {
        sh 'mysql -u root -ppassword -e \'SELECT * FROM tourneys;\' days > /home/ubuntu/workspace/BackBase/test.txt'
      }
    }
    stage('Ololo step') {
      steps {
        sh 'ls -al'
      }
    }
  }
}
