data "aws_eks_cluster_auth" "cluster" {
  name = var.cluster_name
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
  token                  = data.aws_eks_cluster_auth.cluster.token
  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    args        = ["eks", "get-token", "--cluster-name", var.cluster_name]
    command     = "aws"
  }
}

resource "kubernetes_config_map" "configmap" {
  metadata {
    name      = var.configmap_name
    namespace = var.configmap_namespace
    labels = merge(
      {
        "app.kubernetes.io/managed-by" = "Terraform"
      }, var.configmap_labels
    )
  }
  data = var.configmap_data
}
