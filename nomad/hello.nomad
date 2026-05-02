job "hello-devops" {
  datacenters = ["dc1"]

  group "app" {
    task "hello" {
      driver = "docker"

      config {
        image = "devops-hello"
      }

      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}
