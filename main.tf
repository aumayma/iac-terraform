provider "aws" {
  region = var.region
}

module "vpc" {
  source      = "./modules/vpc"
  name        = var.project_name
  vpc_cidr    = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
  az          = "us-east-1a"
}

module "security_group" {
  source = "./modules/security"
  name   = var.project_name
  vpc_id = module.vpc.vpc_id
}
module "ec2" {
  source             = "./modules/ec2"
  name               = var.project_name
  ami                = "ami-0c7217cdde317cfec" # Ubuntu 22.04 (exemple)
  instance_type      = "t2.micro"
  subnet_id          = module.vpc.subnet_id
  security_group_id  = module.security_group.security_group_id
  user_data_path     = "${path.module}/user_data/install_nginx.sh"
  key_name           = ""
}
module "alb" {
  source            = "./modules/alb"
  name              = var.project_name
  vpc_id            = module.vpc.vpc_id
  subnet_ids        = [module.vpc.subnet_id] # pour le moment 1 seul subnet
  security_group_id = module.security_group.security_group_id
  instance_id       = module.ec2.web.id
}
