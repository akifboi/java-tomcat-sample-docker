pipeline{
	agent any
	stages{
		stage("build application"){
			steps{
				sh 'mvn -f pom.xml clean package'
			}
			post{
				success{
					echo"archive the artifacts"
					archiveArtifacts artifacts:'**/*.war'
				}
			}
		}
		stage("create a tomcat image"){
			steps{
				sh "docker build . -t tomcatwebtempbyakif"
			}
		}
	}
}
