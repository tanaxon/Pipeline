pipeline {

  agent any

  stages {

    /* Build */
    stage('Build') {
      steps {
        dir ('Pipeline') {
      	  bat 'mvn clean package install -DskipTests=true -DskipWebServicesSourcesCreation=false'
          archiveArtifacts 'target/*.iar'
        }
      }
    }

    /* Testing */
    // stage('Testing') {
    //   steps {
    //     dir ('Pipeline') {
    //   	  sh 'mvn clean test -B'
    //       junit 'target/surefire-reports/*.xml'
    //     }
    //   }
    // }

    /* Preview */
    stage('Preview') {
      steps {
        script {
          def CURRENT_BUILD = currentBuild.number
          def BRANCH_NAME = env.BRANCH_NAME
          echo "Current build number : $CURRENT_BUILD"
          echo "Current branch name : $BRANCH_NAME"

          def BRANCH_NAME_ENCODE1 = java.net.URLEncoder.encode(BRANCH_NAME, "UTF-8")
          def BRANCH_NAME_ENCODE2 = java.net.URLEncoder.encode(BRANCH_NAME_ENCODE1, "UTF-8")
          echo "Current branch name encoded 2 times : $BRANCH_NAME_ENCODE2"

          dir ('Pipeline') {
            httpRequest ignoreSslErrors: true, 
            responseHandle: 'NONE', 
            url: "http://10.123.0.174:8085/ivy/pro/IvyDeploymentTool/deployment_tool_ivy/144CBB1313C1F669/start.ivp?applicationName=PIPELINE_PREVIEW&useActiveDirectory=false&redeploy=true&newApplication=false&downloadUrl=http%3A%2F%2F10.123.0.174%3A9000%2Fjob%2F01-packaging%2Fjob%2F$BRANCH_NAME_ENCODE2%2F$CURRENT_BUILD%2Fartifact%2Ftarget%2Fpipeline-1.0.0-SNAPSHOT.iar", 
            validResponseCodes: '200'
          }

          // Ask for deploy to product
          if (BRANCH_NAME == 'master') {
            timeout(time: 1, unit: "HOURS") {
              input message: 'Do you really want to deploy to PIPELINE ?', ok: 'Yes'
            }
          }

        }
      }
    }

    /* Deploy - Only for master branch */
    stage('Deploy') {
      when {
        branch 'master'
      }
      steps {
        script {
          def CURRENT_BUILD = currentBuild.number
          def BRANCH_NAME = env.BRANCH_NAME
          echo "Current build number : $CURRENT_BUILD"
          echo "Current branch name : $BRANCH_NAME"

          def BRANCH_NAME_ENCODE1 = java.net.URLEncoder.encode(BRANCH_NAME, "UTF-8")
          def BRANCH_NAME_ENCODE2 = java.net.URLEncoder.encode(BRANCH_NAME_ENCODE1, "UTF-8")
          echo "Current branch name encoded 2 times : $BRANCH_NAME_ENCODE2"

            dir ('Pipeline') {
              httpRequest ignoreSslErrors: true, 
              responseHandle: 'NONE', 
              url: "http://10.123.0.174:8085/ivy/pro/IvyDeploymentTool/deployment_tool_ivy/144CBB1313C1F669/start.ivp?applicationName=PIPELINE&useActiveDirectory=false&redeploy=true&newApplication=false&downloadUrl=http%3A%2F%2F10.123.0.174%3A9000%2Fjob%2F01-packaging%2Fjob%2F$BRANCH_NAME_ENCODE2%2F$CURRENT_BUILD%2Fartifact%2Ftarget%2Fpipeline-1.0.0-SNAPSHOT.iar", 
              validResponseCodes: '200'
            }
        }
      }
    }
  }

  /* Final */
  post {
      always {
          echo 'Finished'
          //deleteDir() /* clean up our workspace */
      }
      success {
          echo 'Succeeeded!'
      }
      unstable {
          echo 'Unstable :/'
      }
      failure {
          echo 'Failed :('
      }
      changed {
          echo 'Things were different before...'
      }
  }
  
}
