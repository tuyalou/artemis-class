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
  
##If there are no default values for defined variables, terraform now ends up with an error  
variable "aws_region" {
  default = "us-east-1"
}


variable "environment" {}


variable "deployment_image" {
  default = "tuyalou/artemis:master"
}
