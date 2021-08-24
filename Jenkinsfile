pipeline{
    agent any

     tools {
        maven "maven-3"
    }
stages {
    
    stage('Clean Code') {
        steps{
          sh 'mvn clean'
        }
    }
    
     stage('Compile Code') {
        steps{
          sh 'mvn compile'
        }
    }
    
    stage("Build Code"){
            steps{
                sh "mvn package"
            }
            post {
                success {
                    echo "Archiving artifacts..."
                    archiveArtifacts artifacts: '**/target/*.war'
            }
        }
    }     
     stage('Quality test Code') {
        steps{
        sh 'mvn sonar:sonar'
        }
    }

//     stage("Deploy code"){
//            steps{
//               sshagent(['ubuntu']){
//                sh "scp -o StrictHostKeyChecking=no target/*.war  ubuntu@3.105.97.36:/var/lib/tomcat9/webapps"
//                }
//            }
//    }
 }
}
