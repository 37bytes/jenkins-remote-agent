# jenkins-remote-agent

Удаленный агент Jenkins. Если у сборочных нод нет возможности подключатся к серверам где должно собираться/куда должно деплоится.

В Jenkins создается Node с настройкой **Launch method: Launch agent by connecting it to the controller**
В конце выдается ссылка и Secret. 

На удаленной машине запустить 

docker run --name jenkins-agent -e JNLP_URL="https://jenkins.kube.37b.io/computer/hh%2Ddc/jenkins-agent.jnlp" -e AGENT_SECRET="" -d docker.nexus.37b.io/library/jenkins-remote-agent:v1
