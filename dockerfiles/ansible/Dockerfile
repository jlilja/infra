FROM python:slim@sha256:f3614d98f38b0525d670f287b0474385952e28eb43016655dd003d0e28cf8652

WORKDIR /ansible

RUN apt-get update
RUN apt-get install -y openssh-client

RUN pip3 install ansible

RUN pwd
RUN ls

ENTRYPOINT ["ansible-playbook"]
