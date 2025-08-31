provider "aws" {
  region = var.aws_region
}

module "ec2_instance" {
  source        = "./modules/ec2_instance"
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  
  tags          = var.tags
}

output "instance_id" {
  value = module.ec2_instance.instance_id
}

output "public_ip" {
  value = module.ec2_instance.public_ip
}
