provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["./credentials.txt"]
}

#Blue
resource "aws_lb" "blue_lb_Lab3" {
  subnets = [
    module.VPC.blue-1_id, 
    module.VPC.blue-2_id, 
    module.VPC.blue-3_id
  ]
  security_groups = [module.SecurityGroups.SG-blue_id_Lab3]
}


#Green
resource "aws_lb" "green_lb_Lab3" {
  subnets = [
    module.VPC.green-1_id, 
    module.VPC.green-2_id, 
    module.VPC.green-3_id
  ]
  security_groups = [module.SecurityGroups.SG-green_id_Lab3]
}

module "VPC" {
  source = "./VPC Module"
}

module "SecurityGroups" {
  source       = "./SG Module"
  VPC-blue_id_Lab3  = module.VPC.VPC-blue_id_Lab3
  VPC-green_id_Lab3 = module.VPC.VPC-green_id_Lab3
}
