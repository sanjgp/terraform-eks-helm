resource "helm_release" "cron-and-dependency" {
  name       = "cron-and-dependency"
  chart      = "./cron-and-dependency"
  dependency_update = true
  namespace = var.helm_namespace
  values = [
    "${file("./cron-and-dependency-helm/values.yaml")}"
  ]

  set {
    name  = "cronjob.name"
    value = "dependency-cronjob"
    type  = "string"
  }
  set {
    name  = "mysql.enabled"
    value = "true"
  }
}