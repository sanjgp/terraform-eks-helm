variable "cluster_name" {
    default = "eks_cluster"
}

variable "subnet_ids" {
    type = list(string)
    default = []
}

variable "helm_namespace" {
  default = "default"
}
variable "region" {
  default = "us-east-2"

}
variable "eks_version" {
    default = "1.30"
  
}
variable "workernode_instance_types" {
    type = list(string)
    default = ["t3.medium"]
  
}