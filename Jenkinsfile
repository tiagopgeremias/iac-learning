pipeline {    
    
    agent any
    
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
