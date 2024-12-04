# Dockerfile
ARG VARIANT="20-bullseye"
FROM mcr.microsoft.com/devcontainers/python:1-3.12-bullseye

# Install pipenv
RUN pip3 install pipenv

# RUN curl -L https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-arm64.zip -o aws-sam-cli.zip \
#    && unzip aws-sam-cli.zip -d sam-installation \
#    && ./sam-installation/install \
#    && rm aws-sam-cli.zip

# RUN curl -L https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip -o aws-sam-cli.zip \
#     && unzip aws-sam-cli.zip -d sam-installation \
#     && ./sam-installation/install \
#     && rm aws-sam-cli.zip

# RUN npm install -g aws-cdk@latest
# RUN npm install --global yarn



# packer

RUN wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
RUN sudo apt update && sudo apt install packer


# Install Terraform
RUN wget -O terraform.zip https://releases.hashicorp.com/terraform/0.12.31/terraform_0.12.31_linux_amd64.zip && \
        unzip terraform.zip -d /usr/bin/ && \
        rm terraform.zip


# Install curl and libSSL, so Tornado can use the CURL HTTP client.
RUN apt-get update && apt-get install -y libcurl4-openssl-dev libssl-dev

# # Install awscli
# ENV AWS_CLI_VERSION="2.17.27"
# RUN curl https://awscli.amazonaws.com/awscli-exe-linux-x86_64-${AWS_CLI_VERSION}.zip -o awscli-bundle.zip && \
#         unzip awscli-bundle.zip && \
#         ./aws/install && \
#         rm -rf aws*

