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
    stage('Dump step') {
      steps {
        sh 'mysqldump -u root -ppassword days > /home/ubuntu/workspace/BackBase/dump.sql'
      }
    }

   stage('S3Copy step') {
      steps {
       s3Upload consoleLogLevel: 'INFO', dontSetBuildResultOnFailure: false, dontWaitForConcurrentBuildCompletion: false, entries: [[bucket: 'my.bucket.for.upload.jenkins47', excludedFile: 'file.txt' 'Jenkinsfile', flatten: false, gzipFiles: false, keepForever: false, managedArtifacts: false, noUploadOnFailure: false, selectedRegion: 'us-east-1', showDirectlyInBrowser: false, sourceFile: '*/', storageClass: 'STANDARD', uploadFromSlave: true, useServerSideEncryption: false]], pluginFailureResultConstraint: 'FAILURE', profileName: 'Jenkins', userMetadata: [] 
      }
    }  
  }
}
