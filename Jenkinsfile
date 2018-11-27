pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args '-p 80:8080 -v /root/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean spring-boot:repackage spring-boot:run'
            }
        }
    }
}