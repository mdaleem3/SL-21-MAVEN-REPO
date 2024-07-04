pipeline {
    agent any
    tools {
        jdk 'JAVA_HOME'
        maven 'MAVEN_HOME'
    }

    stages {
        stage('Git Clone') {
            steps {
                git changelog: false, poll: false, url: 'https://github.com/hkshitesh/GFG-21-MAVEN-REPO.git'
            }
        }
        stage('Maven Build') {
            steps {
                bat 'mvn install'
            }
        }
        stage('Docker Build and Push') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'd2866e06-4cbd-41a1-b500-4a00fdc6986e') {
                        bat 'docker build -t hkshitesh/gfgrepo .'
                        bat 'docker push hkshitesh/gfgrepo'
                    }
                }
            }
        }
    }
}
