FROM centos:7

RUN yum install wget -y

RUN wget -O /etc/yum.repos.d/jenkins.repo \https://pkg.jenkins.io/redhat/jenkins.repo

RUN rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key

RUN yum install jenkins java-11-openjdk-devel -y

RUN yum install sudo -y

RUN yum install /sbin/service -y

CMD service jenkins start -DEFOREGROUND && /bin/bash
