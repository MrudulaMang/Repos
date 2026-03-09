resource "aws_instance" "this"{
 ami           = data.aws_ami.joindevops.id
 instance_type = var.instance_type
 subnet_id              = aws_subnet.public.id
 vpc_security_group_ids = var.sg_ids
 
 tags = {
    local.ec2_final_tags
     }
}

