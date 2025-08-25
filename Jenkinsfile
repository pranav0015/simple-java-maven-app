pipeline{
    agent any
         stages{
             stage("test"){
                steps{
                    echo "Testing the application"
                    echo "Executing branch ${BRANCH_NAME}"
                }
            }

        stage("build"){
                when{
                    expression{
                        BRANCH_NAME == 'master'
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
