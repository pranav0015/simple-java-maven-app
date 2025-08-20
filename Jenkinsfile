pipeline{
    agent any
    parameters{
        choice(name: 'VERSION', choices: ['1.0', '1.1', '1.2'])
        booleanParam(name: 'executeTest', defaultValue: True)
    }
        stage{
            stage("build"){
                steps{
                    echo "Building the application"
                }
            }
         stage("test"){
                when{
                    expression{
                        params.executeTest 
                    }
                }
                steps{
                    echo "Testing the application"
                }
            }
         stage("deploy"){
                steps{
                    echo "Deploying the application ${VERSION}"
                }
            }
        }
}
