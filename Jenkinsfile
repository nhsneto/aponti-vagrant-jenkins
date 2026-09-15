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

        // ############## Terminar ##############
        stage("Deploy") {
            steps {
                sshagent(credentials: ["app"]) {
                    sh "ssh vagrant@192.168.33.20 hostname"
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
