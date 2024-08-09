ARG DOCKER_PROXY_REGISTRY

FROM ${DOCKER_PROXY_REGISTRY}library/amazoncorretto:21-alpine-jdk
ARG JNLP_URL
ARG AGENT_SECRET

RUN mkdir /srv/app
RUN mkdir /root/.m2
COPY ./maven-settings.xml /root/.m2/settings.xml
RUN apk add git openssh-client wget
WORKDIR /srv
RUN wget https://archive.apache.org/dist/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz && tar -xvzf apache-maven-3.6.3-bin.tar.gz && ln -s /srv/apache-maven-3.6.3/bin/mvn /usr/bin/mvn && rm -Rf apache-maven-3.6.3-bin.tar.gz
RUN mkdir -p /var/jenkins/remoting
COPY agent.jar /srv/app/jenkins-agent.jar
WORKDIR /srv/app
CMD java -jar jenkins-agent.jar -jnlpUrl ${JNLP_URL} -secret ${AGENT_SECRET} -workDir "/var/jenkins" -failIfWorkDirIsMissing


