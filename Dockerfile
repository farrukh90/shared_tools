FROM   sharedtools:4.7
RUN  yum update -y && \
     yum -y install telnet unzip wget  && \

     # Install terraform
     wget https://releases.hashicorp.com/terraform/0.14.11/terraform_0.14.11_linux_amd64.zip && \
     unzip terraform_0.14.11_linux_amd64.zip && \
     mv terraform /usr/bin  && \
     terraform version  && \

     # Install packer
     rm -rf /usr/sbin/packer && \
     wget https://releases.hashicorp.com/packer/1.7.10/packer_1.7.10_linux_amd64.zip && \
     unzip packer_1.7.10_linux_amd64.zip && \
     mv packer /usr/bin