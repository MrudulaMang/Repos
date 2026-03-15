# session 38
module "sg" {
    source = "../../terraform_aws_sg"
    project = "roboshop"
    environment = "dev"
    sg_name = "roboshop"
    vpd_id = local.vpc_id
}