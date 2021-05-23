pipeline {
	agent any
	
	stages {
		stage('Build') {
			steps {
				sh 'npm install'
                sh 'npm run build'	
			}
		}
		
		stage('Build Docker Image') {
			steps {
				sh 'docker build -t reactapp:latest .'	
			}
		}
		stage('Tag Docker Image') {
			steps {
			sh "docker tag reactapp:latest ramu215/reactapp"
               
			}
		}
		stage('Push Docker Image') {
			steps {
				withCredentials([usernamePassword(credentialsId: 'DOCKER_CREDS', passwordVariable: 'DOCKER_HUB_PWD', usernameVariable: 'DOCKER_HUB_USER')]) {
					sh 'docker login -u $DOCKER_HUB_USER -p $DOCKER_HUB_PWD'
					sh "docker push ramu215/reactapp"
                   
				}
			}
		}
	}
}