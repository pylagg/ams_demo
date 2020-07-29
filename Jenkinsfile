pipeline
{
    agent any
    tools
    {
        maven 'maven'
    }
    stages {
	    stage("Code Checkout") {
                	steps {
                		git branch: 'master',
                		url: 'https://github.com/pylagg/ams_demo.git'
                  	}
              }
	     stage('Testing Stage')
		{
			steps{
				 bat 'mvn test'
			}
		}
		  stage('Build Stage') {
			steps{
				bat 'mvn clean package'
			}
		}    
	    stage('SonarQube analysis') 
		{
            		steps {
                		withSonarQubeEnv('sonar') {
                                     		bat 'mvn sonar:sonar'
                		}
            		}
        	}    
		stage('Artifactory')
		{
			steps{
				bat 'mvn deploy'
			}
		}
    }
}
