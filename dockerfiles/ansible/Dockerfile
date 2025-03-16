FROM python:3.13-slim@sha256:f3614d98f38b0525d670f287b0474385952e28eb43016655dd003d0e28cf8652

WORKDIR /ansible

RUN apt-get update

RUN apt-get install -y \
    openssh-client \
    sshpass

COPY requirements.txt /ansible

RUN pip3 install -r requirements.txt

ENTRYPOINT ["ansible-playbook"]
