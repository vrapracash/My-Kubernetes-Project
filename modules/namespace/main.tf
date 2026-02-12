resource "kubernetes_namespace" "backend" {
  metadata { name = "uat-backend" }
}

resource "kubernetes_namespace" "frontend" {
  metadata { name = "uat-frontend" }
}

resource "kubernetes_namespace" "mobile" {
  metadata { name = "uat-mobile" }
}

resource "kubernetes_namespace" "platform" {
  metadata { name = "platform" }
}