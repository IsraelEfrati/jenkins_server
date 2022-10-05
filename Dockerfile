FROM jenkins/jenkins
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml


RUN jenkins-plugin-cli \
    --plugins \
    ant:latest \ 
    antisamy-markup-formatter:latest \
    build-timeout:latest \ 
    cloudbees-folder:latest \
    configuration-as-code:latest \
    credentials-binding:latest \
    email-ext:latest \
    git:latest \
    github-branch-source:latest \
    gradle:latest \ 
    ldap:latest \
    mailer:latest \
    matrix-auth:latest \
    pam-auth:latest \
    pipeline-github-lib:latest \
    pipeline-stage-view:latest \
    ssh-slaves:latest \
    timestamper:latest \
    workflow-aggregator:latest \
    ws-cleanup:latest
COPY casc.yaml /var/jenkins_home/casc.yaml    
    
    
