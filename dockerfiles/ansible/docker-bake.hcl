group "default" {
  targets = ["ansible-playbook"]
}

target "ansible-playbook" {
  dockerfile = "Dockerfile"

  tags = [
    "ansible-playbook:latest"
  ]
}
