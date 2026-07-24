group "default" {
  targets = ["caddy"]
}

variable "TAG" {
  default = "latest"
}

target "caddy" {
  dockerfile = "Dockerfile"

  platform = [
    "linux/amd64"
  ]

  tags = [
    "caddy-server:${TAG}"
  ]
}
