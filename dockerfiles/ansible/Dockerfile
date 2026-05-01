FROM python:3.14-slim@sha256:5b3879b6f3cb77e712644d50262d05a7c146b7312d784a18eff7ff5462e77033

WORKDIR /ansible

RUN apt-get update

RUN apt-get install -y \
    openssh-client \
    sshpass

COPY requirements.txt /ansible

# Deprecation notices on community.network packages - https://forum.ansible.com/t/vote-ended-on-2024-10-07-should-we-remove-community-network-from-the-ansible-community-package/8030/37
# Changelog entry for deprecation - https://github.com/ansible-collections/community.network/blob/stable-5/CHANGELOG.rst#v510

RUN pip3 install -r requirements.txt

COPY ansible.cfg /etc/ansible/ansible.cfg

ENTRYPOINT ["ansible-playbook"]
