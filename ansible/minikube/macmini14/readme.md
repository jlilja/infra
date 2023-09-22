# Minikube

## Setting up a new main host

First off you need to transfer the bootstrapping script onto your new host.

1. `task ansible:minikube:macmini:transfer-bootstrap`

*Make sure to adjust host address if it does not match.*

Ssh into the machine and run the bootstrapping script.

2. `ssh j@192.168.1.149`
3. `sh ./bootstrapping/bootstrap_host.sh`

Now make sure that your new host is responding and ready to accept ansible commands.

4. `task ansible:minikube:macmini:ping-host`

With ansible installed on the host and we can verify that our ping via ansible is responding, it should now mean that we can connect to with passwordless SSH.
Please verfy that this is the case:

5. `ssh j@192.168.1.149`
