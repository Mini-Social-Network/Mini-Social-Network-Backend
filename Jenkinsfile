pipeline {
    agent any

    environment {
        DOCKER_CREDENTIALS_ID = 'docker-hub' // ID of Docker Hub credentials in Jenkins
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Read and Increment Version') {
                    steps {
                        script {
                            def BRANCH_NAME = env.GIT_BRANCH ?: 'dev' // Default to 'dev' if env.GIT_BRANCH is null

                            if (BRANCH_NAME.startsWith('dev')) {
                                def versionFile = readFile 'version-dev.txt'
                                def (major, minor) = versionFile.trim().split('\\.').collect { it.toInteger() }
                                minor += 1
                                env.VERSION = "${major}.${minor}"
                                writeFile file: 'version-dev.txt', text: "${major}.${minor}"
                            } else if (BRANCH_NAME.startsWith('main')) {
                                def versionFile = readFile 'version-main.txt'
                                def (major, minor) = versionFile.trim().split('\\.').collect { it.toInteger() }
                                major += 1
                                minor = 0
                                env.VERSION = "${major}.${minor}"
                                writeFile file: 'version-main.txt', text: "${major}.${minor}"
                            } else {
                                error "Unsupported branch: ${BRANCH_NAME}"
                            }

                    sh '''
                    git config user.name "vhs24"
                    git config user.email "voson1024@gmail.com"
                    git add version-*.txt
                    git commit -m "Increment version to ${VERSION}"
                    git push origin ${BRANCH_NAME.replace('origin/', '')}
                    '''
                }
            }
        }

        stage('Build and Push Docker Images') {
            steps {
                script {
                    buildAndPushDockerImage('apigateway-service')
                    buildAndPushDockerImage('auth-service')
                    buildAndPushDockerImage('chat-service')
                    buildAndPushDockerImage('config-service')
                    buildAndPushDockerImage('eureka-service')
                    buildAndPushDockerImage('notify-service')
                    buildAndPushDockerImage('post-service')
                    buildAndPushDockerImage('system-service')
                    buildAndPushDockerImage('user-service')
                }
            }
        }

        stage('Deploy with Docker Compose') {
            steps {
                script {
                    // Set VERSION environment variable for docker-compose
                    writeFile file: '.env', text: "VERSION=${VERSION}"

                    sh "docker-compose down"
                    sh "docker-compose pull"
                    sh "docker-compose up -d"
                }
            }
        }
    }

    post {
        always {
            cleanWs() // Clean workspace after the build
        }
    }
}

def buildAndPushDockerImage(serviceName) {
    pipeline {
        agent any

        stages {
            stage('Build Docker Image') {
                steps {
                    script {
                        def dockerImage = "mini-social-network/${serviceName}:${env.VERSION}"
                        def serviceContext = "${serviceName.replace('-service', '')}-Service"
                        dir(serviceContext) {
                            docker.build(dockerImage, "--build-arg BUILD_ID=${env.BUILD_ID} .")
                            docker.withRegistry('', "${DOCKER_CREDENTIALS_ID}") {
                                docker.image(dockerImage).push()
                                docker.image(dockerImage).push('latest')
                            }
                        }
                    }
                }
            }
        }

        post {
            always {
                cleanWs()
            }
        }
    }
}
