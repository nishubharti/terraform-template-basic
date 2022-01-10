provider "ibm" {
}

# data "ibm_resource_group" "cos_group" {
#   name = "Defaultabcdef123 "
# }

module "cos" {
  // Uncommnet the following line to point the source to registry level
  source = "terraform-ibm-modules/cos/ibm//modules/instance"

  //source = "../../modules/instance"
  # bind_resource_key = var.bind_resource_key
  service_name      = "test_cos_bucket"
  resource_group_id = "2a374cc74db644b48b2bef47539cbfee"
  plan              = "standard"
  region            = "global"
  create_timeout    = "15m"
  update_timeout    = "15m"
  delete_timeout    = "15m"
}
