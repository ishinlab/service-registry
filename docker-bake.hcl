group "default" {
  targets = ["service-registry-image"]
}

target "service-registry-image" {
  context = "."
  dockerfile = "Dockerfile"
  platforms = ["linux/amd64", "linux/arm64"]
  tags = ["ishinvin/service-registry:latest"]
}
