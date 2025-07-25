pipeline{
    agent {
        docker {
            image 'node:14'
        }
    }

    stages {
        stage('Test Pipeline'){
            steps {
                sh 'node --version'
            }
        }
    }
}