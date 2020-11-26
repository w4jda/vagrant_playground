FROM jenkins/jenkins:2.249.3-lts

COPY jenkins_plugins.txt  /usr/share/jenkins/ref/jenkins_plugins.txt
COPY conf /var/jenkins_conf

ENV JENKINS_HOME /var/jenkins_home
ENV CASC_JENKINS_CONFIG=/var/jenkins_conf
ARG JAVA_OPTS
# Disable setup wizard
ENV JAVA_OPTS "-Djenkins.install.runSetupWizard=false ${JAVA_OPTS:-}"

RUN xargs /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/jenkins_plugins.txt


