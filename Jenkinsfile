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
      steps {
      	sh 'mvn  -f /etc/docker/jenkins/spring_pc/pom.xml clean install'
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
