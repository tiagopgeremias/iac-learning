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
                    sh 'git tag -a -f -m Jenkins Build #20 jenkins-Teste-GIT-20'
                
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
