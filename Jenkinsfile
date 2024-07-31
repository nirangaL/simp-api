pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/nirangaL/simp-api', branch: 'master')
      }
    }

    stage('build image') {
      steps {
        sh 'docker build -t nirangawh/simp-api:latest .'
      }
    }

    stage('Login to docker hub') {
      environment {
        DOCKERHUB_USER = 'nirangawh@hotmail.com'
        DOCKERHUB_PASSWORD = 'NiraNga.1'
      }
      steps {
        sh 'docker login -u $DOCKERHUB_USER -p $DOCKERHUB_PASSWORD'
      }
    }

    stage('Push image') {
      steps {
        sh 'docker push nirangawh/simp-api:latest'
      }
    }

    stage('Run project') {
      steps {
        sh 'docker run -d -p 3000:3000 --name simp-api nirangawh/simp-api:latest'
      }
    }

  }
}