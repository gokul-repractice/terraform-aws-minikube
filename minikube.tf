module "minikube" {
  source = "github.com/learninguser/terraform-aws-minikube"

  aws_region          = "us-east-1"
  cluster_name        = "roboshop"
  aws_instance_type   = "t3.medium"
  ssh_public_key      = "~/.ssh/gokul.pub"
  aws_subnet_id       = "subnet-0034f6eef4d8069bc"
  #ami_image_id        = "ami-0aedf6b1cb669b4c7"
  hosted_zone         = "jasritha.tech"
  hosted_zone_private = false

  tags = {
    Application = "Minikube"
  }

  addons = [
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/storage-class.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/heapster.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/dashboard.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/external-dns.yaml"
  ]
}
