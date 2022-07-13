resource "helm_release" "devtron" {
  name       = "devtron"
  repository = "https://helm.devtron.ai"
  chart      = "devtron-operator"
  version    = var.devtron_helm_version

  namespace        = var.devtron_namespace
  create_namespace = true

  values = [file("devtron.yaml")]

  timeout = 600000

  depends_on = [kind_cluster.default]
}
