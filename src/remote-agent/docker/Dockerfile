ARG DOCKER_PROXY_REGISTRY

FROM ${DOCKER_PROXY_REGISTRY}library/amazoncorretto:21-alpine-jdk
ARG JNLP_URL
ARG AGENT_SECRET

RUN apk add git openssh-client
RUN mkdir -p /var/jenkins/remoting
RUN mkdir /srv/app
COPY agent.jar /srv/app/jenkins-agent.jar
WORKDIR /srv/app
CMD java -jar jenkins-agent.jar -jnlpUrl ${JNLP_URL} -secret ${AGENT_SECRET} -workDir "/var/jenkins" -failIfWorkDirIsMissing


