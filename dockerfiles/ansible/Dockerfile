FROM python:3.9-slim@sha256:d1fd807555208707ec95b284afd10048d0737e84b5f2d6fdcbed2922b9284b56

WORKDIR /ansible

RUN apt-get update

RUN apt-get install -y \
    openssh-client \
    sshpass

RUN pip3 install \
    ansible \
    ansible-pylibssh

ENTRYPOINT ["ansible-playbook"]
