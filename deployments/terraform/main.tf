module "artemis-deploy" {
  source  = "fuchicorp/chart/helm"

  deployment_name        = "artemis"
  deployment_environment = "${var.environment}"
  deployment_endpoint    = "none" 
  deployment_path        = "artemis"

  template_custom_vars  = {     
    deployment_image     = "${var.deployment_image}"    
  }
}
  
variable "aws_region" {}


variable "environment" {}


variable "deployment_image" {
  default = "tuyalou/artemis:master"
}
