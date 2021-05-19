module "vpc-module" {
  source      = "git@github.com:RajanikanthGitHub/vpc-module.git"
  vpc_cidr    = "192.168.0.0/16"
  tenancy     = "default"
  vpc_id      = module.vpc-module.vpc_id
  subnet_cidr = "192.168.1.0/24"
}

module "ec2-module" {
  source        = "git@github.com:RajanikanthGitHub/ec2-module.git"
  ec2_count     = "1"
  ami_id        = "ami-00399ec92321828f5"
  instance_type = "t2.micro"
  subnet_id     = module.vpc-module.subnet_id
}