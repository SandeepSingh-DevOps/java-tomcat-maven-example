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
                sshagent(['ubuntu']){
                sh "sudo scp -o StrictHostKeyChecking=no target/*.war  ubuntu@3.105.97.36:/var/lib/tomcat9/webapps"
                }
            }
    }
}
}
