pipeline{
    agent any
         stage("test"){
                steps{
                    echo "Testing the application"
                    echo "Executing branch ${BRANCH_NAME}"
                }
            }

         stage{
            stage("build"){
                when{
                    expression{
                        BRANCH_NAME == 'master'
                    }
                }
                steps{
                    echo "Building the application"
                }
            }

         stage("deploy"){
                when{
                    expression{
                        BRANCH_NAME == 'master'
                    }
                }
                steps{
                    echo "Deploying the application ${VERSION}"
                }
            }
        }
}
