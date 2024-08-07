##############################################################################
# Landing Zone VSI Pattern
##############################################################################

module "landing_zone" {
  #source           = "https://cm.globalcatalog.cloud.ibm.com/api/v1-beta/offering/source/archive//patterns/vsi?archive=tgz&flavor=standard&installType=fullstack&kind=terraform&name=deploy-arch-ibm-slz-vsi&version=v5.3.1"
  #source           = "git::https://github.com/kbiegert/terraform-ibm-landing-zone//patterns/vsi.git"
  source           = "terraform-ibm-modules/landing-zone/ibm"
  version          = "5.3.1"
  prefix           = var.prefix
  region           = "us-south"
  ibmcloud_api_key = var.ibmcloud_api_key
  ssh_public_key   = var.ssh_key
  override         = true
}
