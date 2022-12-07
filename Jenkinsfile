pipeline { 

    environment { 
        registry = "portfolio" 
        user= "abdosuper"
        dockerImage = '' 
        version="1."
    }

    agent any 

    stages { 

        stage('Building our image') { 

            steps { 

                script { 

                
                sh 'docker build -t $user/${registry}:${version}${BUILD_NUMBER} . ' 
                }

            } 

        }

        stage('Deploy our image') { 

            steps { 

                script { 

                    withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
                       sh  'docker push ${user}/${registry}:${version}${BUILD_NUMBER}'
        
                }

                } 

            }

        } 
       stage('Run new version') { 
         
            steps {
                sh "docker stop portfolio"
                sh "docker rm  portfolio "
                sh "docker run -p 8080:80 -d  --name portfolio  ${user}/${registry}:${version}${BUILD_NUMBER}"

            }
        }


    }

}