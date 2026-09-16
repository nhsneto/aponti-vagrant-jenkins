pipeline {
    agent any

    stages {
        stage("Install") {
            steps {
                sh "cd app && npm install"
            }
        }

        stage("Build") {
            steps {
                sh "cd app && npm run build"
            }
        }

        stage("Test") {
            steps {
                sh "cd app && npm test"
            }
        }

        stage("Deploy") {
            steps {
                sshagent(credentials: ["app"]) {
                    sh "scp -r app/ vagrant@192.168.33.20:/home/app"
                }
            }
        }
    }

    post {
        success {
            echo "Pipeline finalizada com sucesso."
        }

        failure {
            echo "Pipeline falhou."
        }
    }
}
