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
        
        stage('Tag') {
            steps {
                
                    sh 'git config --global user.email "tiagopgeremias@gmail.com"'
                    sh 'git config --global user.name "Tiago Geremias"'
                    sh 'git tag -a v${BUILD_NUMBER} -f -m "Jenkins Build #${BUILD_NUMBER}"'
                    sh 'git push origin v${BUILD_NUMBER}'
                
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
