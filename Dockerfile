FROM python:latest

# install node
RUN apt-get update -yq
RUN apt-get install curl gnupg -yq
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install nodejs -yq

# install awscli
RUN pip install awscli

# install awsmobile
RUN npm install -g awsmobile-cli@1.1.7
RUN npm install -g aws-sdk

# install angular cli
RUN npm install -g @angular/cli@9.1.8

# install angular Serverless
RUN npm install -g serverless
RUN npm install bluebird
