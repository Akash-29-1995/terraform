module "vpc" {
  source = "./vpc"
}

module "ec2" {
  source = "./ec2"
  subnet_id =   module.vpc.subnet_id
}

module "TG" {
  source        = "./TG"
  vpc_id        = module.vpc.vpc_id
  instance_id   = module.ec2.instance_id
  sg_id         = module.vpc.sg_id
  subnet_id     = module.vpc.pub_subnet_id
  subnet_id_2   = module.vpc.pub_subnet_id_2
}


module "imported_igw" {
  source = "./InternetGateway"
  vpc_id = "vpc-0f9499885dbb94dfd"  # Specify the VPC ID to attach the Internet Gateway to
}