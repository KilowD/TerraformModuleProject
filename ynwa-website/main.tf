# Configure the AWS Provider
provider "aws" {
  region  = var.region
  profile = "terraform-connect"
}

#create vpc
module "vpc" {
  source                       = "../modules/vpc"
  region                       = var.region
  project_name                 = var.project_name
  vpc-cidr                     = var.vpc-cidr
  public-subnet-az1-cidr       = var.public-subnet-az1-cidr
  public-subnet-az2-cidr       = var.public-subnet-az2-cidr
  private_app_subnet_az1-cidr  = var.private_app_subnet_az1-cidr
  private_app_subnet_az2-cidr  = var.private_app_subnet_az2-cidr
  private_data_subnet_az1-cidr = var.private_data_subnet_az1-cidr
  private_data_subnet_az2-cidr = var.private_data_subnet_az2-cidr


}

# create nat-gateway by referencing the output values from vpc module
module "nat-gteway" {
  source                     = "../modules/nat-gateway"
  public-subnet-az1-id       = module.vpc.public-subnet-az1-id
  public-subnet-az2-id       = module.vpc.public-subnet-az2-id
  internet_gateway           = module.vpc.internet_gateway
  vpc-id                     = module.vpc.vpc-id
  private_app_subnet_az1-id  = module.vpc.private_app_subnet_az1-id
  private_data_subnet_az1-id = module.vpc.private_data_subnet_az1-id
  private_app_subnet_az2-id  = module.vpc.private_app_subnet_az2-id
  private_data_subnet_az2-id = module.vpc.private_data_subnet_az2-id

}

# create security group by referencing the output values from vpc module
module "security-group" {
  source = "../modules/security-group"
  vpc-id = module.vpc.vpc-id
}
