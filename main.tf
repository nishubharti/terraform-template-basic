provider "ibm" {
}

# data "ibm_resource_group" "cos_group" {
#   name = "Default"
# }

module "cos" {
  // Uncommnet the following line to point the source to registry level
  source = "terraform-ibm-modules/cos/ibm//modules/instance"

  //source = "../../modules/instance"
  # bind_resource_key = var.bind_resource_key
  service_name      = "test_cos_bucket"
  resource_group_id= "66e101aa10194a809c39227c95aa8e94" #p
  #resource_group_id= "959a39a9a19e46d9b7e772e239ddf25d" #s
  plan              = "standard"
  #plan = "lite"
  region            = "global"
  create_timeout    = "15m"
  update_timeout    = "15m"
  delete_timeout    = "15m"
}
