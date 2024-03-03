# Nginx

To start Nginx on K8s, please follow the steps below:

1. `task k8s:webserver:transfer-definition`
2. `task k8s:webserver:transfer-ingress`
3. `ssh [user]@[ip]`
4. `minikube kubectl -- apply -f nginx.yml`
5. Once the cluster has satisfied the deployment instructions, start the dashboard and setup ssh tunnel.
    * On remote - `minikube dashboard --url`, remember the assigned port.
    * On local - `ssh -L [assigned port]:127.0.0.1:[assigned port] [user]@[ip]`

# Links
* [Kubernetes on bare metal](https://www.liquidweb.com/blog/kubernetes-on-bare-metal)
