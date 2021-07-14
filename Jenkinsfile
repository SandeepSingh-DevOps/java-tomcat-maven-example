pipeline{
    agent any

     tools {
        maven "maven-38"
    }
stages {
    
    stage("Build Code"){
            steps{
                sh "mvn clean package"
            }
            post {
                success {
                    echo "Archiving artifacts..."
                    archiveArtifacts artifacts: '**/target/*.war'
            }
        }
    }     
     stage('Maven Test') {
        steps{
        sh 'mvn test'
        }
    }

     stage("Deploy code"){
            steps{
                sshagent(['42ec1fe1-fd73-4946-8fd0-a0b0d4755a10']){
                sh "scp -o StrictHostKeyChecking=no target/*.war  ubuntu@3.105.97.36:/var/lib/tomcat9/webapps"
                }
            }
    }
}
}
