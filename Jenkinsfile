pipeline{
  agent any
  stages{
    stage("build the application"){
      steps{
        sh "mvn -f pom.xml clean package"
      }
      post{
        success{
          echo"now archiving the artifacts"
          archiveArtifacts artifacts:'**/*.war'
        }
      }
    }
    
  }
}
