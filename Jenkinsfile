node{
  def app

    stage ('Clean')
	{
	bat 'docker rm -f my_nginx || exit 0'
	}

    stage('Clone') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("devops/nginx")
    }

    stage('Run image') {
        // Lancer le conteneur en arrière-plan avec un nom explicite
        bat 'docker run -d -p 80:80 --name my_nginx_container devops/nginx'

        // Petite pause pour laisser le conteneur démarrer (optionnel)
        sleep(time: 3, unit: 'SECONDS')

	bat 'docker ps'

        bat 'curl localhost'

    }

        
}
