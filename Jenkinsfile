pipeline {
    agent {
        dockerfile {

            args '-u root:root -p 80:8080 -v /root/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean spring-boot:run -pl security'
            }
        }
    }
}