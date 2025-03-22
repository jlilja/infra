FROM python:3.13-slim@sha256:8f3aba466a471c0ab903dbd7cb979abd4bda370b04789d25440cc90372b50e04

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
