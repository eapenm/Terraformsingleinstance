module "dev_ec2_1" {

  source      = "../modules/compute"
  environment = module.dev_vpc_1.environment
  amis = {
    us-east-1 = "ami-0866a3c8686eaeeba"
    us-east-2 = "ami-0ea3c35c5c3284d82"
  }
  aws_region     = var.aws_region
  key_name       = "SecOps-Key"
  vpc_name       = module.dev_vpc_1.vpc_name
  public_subnet  = module.dev_vpc_1.public-subnet
  private_subnet = module.dev_vpc_1.private-subnet
  sg_id          = module.dev_sg_1.sg_id

}
