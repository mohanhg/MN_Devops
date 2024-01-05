pipeline{
   agent any
        stages{
             stage('stage1'){
                steps{
                  sh 'echo stage1'
}
}
             stage('stage2'){
                  steps{
                      sh 'echo stage2'
}
}
            stage('stage3'){
                  steps{
                      sh '''
                            bash ${WORKSPACE}/docker/dockerfile.sh
                            echo stage3
                       '''
}
}
}
}
