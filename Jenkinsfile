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

  }
}