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
                    script{
                    gv.testApp()
                    }
                    echo "Executing branch "
                }
            }

        stage("build"){
                steps{
                    echo "Building the application using }"
                }
            }

         stage("deploy"){
                steps{
                    echo "Deploying the application using "
                }
            }
        }
}
