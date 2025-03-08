group "default" {
  targets = ["ansible-playbook"]
}

variable "TAG" {
  default = "latest"
}

target "ansible-playbook" {
  dockerfile = "Dockerfile"

  platform = [
    "linux/amd64",
    "linux/arm64"
  ]

  tags = [
    "ansible-playbook:${TAG}"
  ]
}
