module "frontend" {
  source              = "git::https://github.com/chandraummadi/terraform-mutable.git//app-module"
  INSTANCE_TYPE       = var.INSTANCE_TYPE
  ENV                 = var.ENV
  SPOT_INSTANCE_COUNT = var.SPOT_INSTANCE_COUNT
  OD_INSTANCE_COUNT   = var.OD_INSTANCE_COUNT
  COMPONENT           = "frontend"
  PORT                = 80
  IS_PRIVATE_LB       = false
  LB_RULE_PRIORITY    = 105
}

output "INSTANCE_IDS" {
  value = module.frontend.INSTANCE_IDS
}