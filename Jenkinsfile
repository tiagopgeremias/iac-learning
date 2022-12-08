pipeline {    
    
    agent any
    
    stages {

        stage('Checkout') {
            steps {
                sh 'ls -la'
                sh 'git config --global user.email "tiagopgeremias@gmail.com"'
                sh 'git config --global user.name "Tiago Geremias"'
            }
        }
        

    }

    post{
        always {
            echo 'Workspace clean up'
            deleteDir()
        }
    }

}
