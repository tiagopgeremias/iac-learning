pipeline {    
    
    agent any
    
    environment { }

    stages {

        stage('Checkout') {
            steps {
                sh 'ls -la'
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
