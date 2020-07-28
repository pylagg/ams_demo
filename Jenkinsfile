pipeline
{
    agent any
    tools
    {
        maven 'maven'
    }
    stages {
	
	      stage('Build Stage') {
			steps{
				bat 'mvn package'
			}
		}
		stage('Compile Stage')
		{
			steps{
				 bat 'mvn compile'
			}
		}
		stage('Testing Stage')
		{
			steps{
				 bat 'mvn test'
			}
		}    
    }
}
