module "network" {
  source      = "./modules/network"
  prefix      = "adv"
  vpc_cidr    = "10.30.0.0/16"
  subnet_cidr = "10.30.1.0/24"
}

module "compute" {
  source        = "./modules/compute"
  prefix        = "adv"
  ami = "ami-0f36dcfcc94112ea1"
  instance_type = "t2.micro"

  subnet_id = module.network.subnet_id
}

output "instance_created" {
  value = module.compute.instance_id
}
