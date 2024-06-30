pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS = credentials('docker-hub')
    }
    stages {
        stage('Checkout repository') {
            steps {
                checkout scm
            }
        }
        stage('Set up environment by docker-compose') {
            steps {
                bat '''
               @echo off
                FOR /f "tokens=*" %%i IN ('docker ps -aq') DO docker rm %%i
                FOR /f "tokens=*" %%i IN ('docker images --format "{{.ID}}"') DO docker rmi %%i
                docker-compose down
                docker-compose up -d
                '''
            }
        }
        stage('Build each service with Gradle and create Docker images') {
            steps {
                script {
                    def services = ["ApiGateway-Service", "Eureka-Service", "Auth-Service", "User-Service", "Chat-Service", "Post-Service", "Notify-Service", "Config-Service", "System-Service"]
                    services.each { service ->
                        if (fileExists(service)) {
                            echo "Building ${service} with Gradle"
                            dir(service) {
                                //bat 'chmod +x gradlew'
                                bat './gradlew build'
                            }
                        } else {
                            error "Directory ${service} does not exist"
                        }
                    }
                }
            }
        }
        stage('Log in to Docker Hub') {
            steps {
                bat '''
                docker logout
                echo $DOCKERHUB_CREDENTIALS_PSW | docker login --username $DOCKERHUB_CREDENTIALS_USR --password-stdin
                '''
            }
        }
        stage('Build and Push Docker Images') {
            steps {
                script {
                    def services = [
                        'apigateway-service': 'ApiGateway-Service',
                        'eureka-service': 'Eureka-Service',
                        'auth-service': 'Auth-Service',
                        'user-service': 'User-Service',
                        'system-service': 'System-Service',
                        'chat-service': 'Chat-Service',
                        'post-service': 'Post-Service',
                        'notify-service': 'Notify-Service',
                        'config-service': 'Config-Service'
                    ]
                    def commitId = sh(returnStdout: true, script: 'git rev-parse HEAD').trim()
                    services.each { key, value ->
                        echo "Building Docker image for ${value}"
                        bat "docker build -t ${DOCKER_USERNAME}/${key}:${commitId} ./${value}"
                        echo "Pushing Docker image for ${key}"
                        bat "docker push ${DOCKER_USERNAME}/${key}:${commitId}"
                    }
                }
            }
        }
        stage('Pull Docker Images') {
            steps {
                script {
                    def services = [
                        'apigateway-service',
                        'eureka-service',
                        'auth-service',
                        'user-service',
                        'system-service',
                        'chat-service',
                        'post-service',
                        'notify-service',
                        'config-service'
                    ]
                    def commitId = sh(returnStdout: true, script: 'git rev-parse HEAD').trim()
                    services.each { service ->
                        echo "Pulling Docker image for ${service}"
                        bat "docker pull ${DOCKER_USERNAME}/${service}:${commitId}"
                    }
                }
            }
        }
        stage('Deploy with Docker Compose') {
            steps {
                script {
                    dir('run') {
                        def commitId = sh(returnStdout: true, script: 'git rev-parse HEAD').trim()
                        bat '''
                        export TAG=${commitId}
                        docker-compose down
                        docker-compose up -d
                        '''
                    }
                }
            }
        }
    }
    post {
        always {
            sh 'docker-compose down'
        }
    }
}
