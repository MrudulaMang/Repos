module "vpc" {
    source = "../../terraform-aws-vpc"
    project = var.Project
    environment = var.environment
    vpc_cidr  = var.vpc_cidr
    is_peering_required = true 
}