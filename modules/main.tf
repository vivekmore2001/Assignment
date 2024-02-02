module "MY_EC2" {
source = "./module/EC2"
M_AMI_ID = var.P_AMI_ID
M_INSTANCE_TYPE = var.P_INSTANCE_TYPE
M_SSH_KEY_NAME         = module.MY_SSH_KEY.KEY_NAME
M_SECURITY_GROUP_NAMES = [module.MY_SEC_SG.THIS_SG_NAME]

}

module "MY_SSH_KEY" {
  source         = "./module/SSH_KEY"
  M_SSH_KEY_NAME = var.P_SSH_KEY_NAME
  M_SSH_KEY_PAIR = file(var.P_SSH_KEY_PAIR)
}

module "MY_SEC_SG" {
  source       = "./Module/SECURITY_GROUP"
  M_SG_NAME    = var.P_SG_NAME
  M_HTTP_PORT  = var.P_HTTP_PORT
  M_CIDR_RANGE = var.P_CIDR_RANGE
}