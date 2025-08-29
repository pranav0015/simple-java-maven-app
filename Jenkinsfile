#!/usr/bin/env groovy

library identifier: 'jenkins-shared-library@master', retriever: modernSCM(
    [$class: 'GitSCMSource',
    remote: 'https://github.com/pranav0015/jenkins-shared-library.git',
    credentialsId: 'github-credential'
    ]
)

def gv

pipeline{
    agent any
    tools{
    maven 'Maven'
    }
         stages{
             stage("init"){
                 steps{
                     script{
                         gv = load "script.groovy"
                     }
                 }
             }

             stage("test"){
                steps{
                    script{
                    gv.testApp()
                    }
                    echo "Executing is in progress "
                }
            }

        stage("build Jar"){
                steps{
                    script{
                        buildJar()
                    }
                    echo "Building the application using }"
                }
            }

         stage("Build and push image"){
             steps{
                 script{
                     buildImage 'pranav20003/demo-app:1.2'
                     dockerLogin()
                     dockerPush 'pranav20003/demo-app:1.2'
                 }
                 
             }
         }    

         stage("deploy"){
                steps{
                    echo "Deploying the application using "
                }
            }
        }
}
