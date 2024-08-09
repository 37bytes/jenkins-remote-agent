#!/bin/sh

mv /root/maven-settings.xml /root/.m2/settings.xml
java -jar jenkins-agent.jar -jnlpUrl ${JNLP_URL} -secret ${AGENT_SECRET} -workDir "/var/jenkins" -failIfWorkDirIsMissing
