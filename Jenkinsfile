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
                sshagent(['ce3621a8-d285-4457-b158-19f6cdcc14a2']){
                sh "chmod +x -R ${env.WORKSPACE}"
                sh "scp -o StrictHostKeyChecking=no target/*.war  ubuntu@3.105.97.36:/var/lib/tomcat9/webapps"
                }
            }
    }
}
}
