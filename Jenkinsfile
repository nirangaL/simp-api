pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/nirangaL/simp-api', branch: 'master')
      }
    }

    stage('log files') {
      steps {
        sh 'ls -la'
      }
    }

  }
}