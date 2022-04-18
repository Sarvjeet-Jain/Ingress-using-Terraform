provider "kubernetes" {

    config_path = "~/.kube/config"
}



resource "kubernetes_ingress" "ingress" {
  metadata {
    name = "<value>"
    namespace = "<value>"
  }
  spec {
    backend {
      service_name = "<value>"
      service_port = 3000
    }
    rule {
        host = ""<domain-name-value>""
      http {
        path {
          backend {
            service_name = "<value>"
            service_port = 3000
          }

          path = "/"
        }
      }
    }
  }
}