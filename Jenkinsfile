def gv
pipeline{
    agent any
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
                    gv.testApp()
                    echo "Executing branch ${BRANCH_NAME}"
                }
            }

        stage("build"){
                when{
                    expression{
                        BRANCH_NAME == 'jenkins-job'
                    }
                }
                steps{
                    echo "Building the application using ${BRANCH_NAME}"
                }
            }

         stage("deploy"){
                when{
                    expression{
                        BRANCH_NAME == 'master'
                    }
                }
                steps{
                    echo "Deploying the application using ${BRANCH_NAME}"
                }
            }
        }
}
