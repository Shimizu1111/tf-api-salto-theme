module "my_ec2" {
  source = "./module/ec2"
  sec_grp_id = "${module.my_vpc.sec_grp_id}"
  subnet_id = "${module.my_vpc.subnet_id}"
  key_name = "${var.key_name}"
}

module "my_vpc" {
  source = "./module/vpc"
  # security_group = module
}
