pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/nirangaL/simp-api', branch: 'master')
      }
    }

    stage('log files') {
      parallel {
        stage('log files') {
          steps {
            sh 'ls -la'
          }
        }

        stage('Run Project') {
          steps {
            sh 'docker run -p 3000:3000 -t simp-app .'
          }
        }

      }
    }

  }
}