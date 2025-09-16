#!groovy
pipeline {
	agent none
  stages {
  	stage('Maven Install') {
    	agent {
      	docker {
        	image 'maven:3.5.0'
        }
      }
      steps('Build') {
      	steps {
	  dir ("/var/jenkins_home/workspace/test_maven"){
	  sh 'mvn clean install'
	  }
	}
      }
    }
     stage('Docker Build') {
    	agent any
      steps {
      	sh ' sudo docker build -t shanem/spring-petclinic:latest .'
      }
    }
  }
}
