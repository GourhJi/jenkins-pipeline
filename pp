pipeline {
    agent { label "node1" }

    stages {
        stage('Stage1:preparing the build.....') {
            steps {
                echo 'preparing...'
            }
        }
        stage('Stage2:clone the project') {
            steps {
                echo 'cloning the project'
                git branch: 'main', url: 'https://github.com/GourhJi/jenkins-pipeline'
                
            }
        }
        stage('Stage3:build') {
            steps {
                sh "pwd"
                sh "ls"
            }
        }
        stage('Stage3:copy artefacts to artefactory') {
            steps {
                echo 'Copying the artefacts'
            }
        }
    }
}
