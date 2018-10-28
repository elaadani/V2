django('django') {
    currentBuild.result = "SUCCESS"

    try {

       stage('Test'){

         print "Comprueba la instalacion de Git"

         sh 'git --version'

       }

       stage('Pull desde el repositorio'){

          sh 'bash ./pullGit.sh'

       }

       stage('Construye la imagen de docker '){

          sh 'bash ./dockerBuild.sh'
       }

       stage('Deploy'){

         echo 'Push to Repository'
         sh 'bash ./dockerPushHeroku.sh'

       }

    }

    catch (err) {

        currentBuild.result = "FAILURE"

        echo 'Build or Deploy failure'
       
        throw err
    }

}
