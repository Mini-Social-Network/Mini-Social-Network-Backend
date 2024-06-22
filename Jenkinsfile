pipeline {
    agent any
    environment {
        DOCKER_USERNAME = credentials('docker-username')
        DOCKER_PASSWORD = credentials('docker-password')
    }
    stages {
        stage('Checkout repository') {
            steps {
                checkout scm
            }
        }
        stage('Set up JDK 17') {
            steps {
                sh 'sudo apt-get update && sudo apt-get install -y openjdk-17-jdk'
                sh 'java -version'
            }
        }
        stage('Set up environment by docker-compose') {
            steps {
                sh '''
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
                                sh 'chmod +x gradlew'
                                sh './gradlew build'
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
                sh '''
                echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin
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
                        sh "docker build -t ${DOCKER_USERNAME}/${key}:${commitId} ./${value}"
                        echo "Pushing Docker image for ${key}"
                        sh "docker push ${DOCKER_USERNAME}/${key}:${commitId}"
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
                        sh "docker pull ${DOCKER_USERNAME}/${service}:${commitId}"
                    }
                }
            }
        }
        stage('Deploy with Docker Compose') {
            steps {
                script {
                    dir('run') {
                        def commitId = sh(returnStdout: true, script: 'git rev-parse HEAD').trim()
                        sh '''
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
