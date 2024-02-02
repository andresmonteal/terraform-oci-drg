

locals {
  default_freeform_tags = {
    terraformed = "Please do not edit manually"
    module      = "oracle-terraform-oci-drg"
  }
  merged_freeform_tags = merge(var.freeform_tags, local.default_freeform_tags)
  compartment_id       = try(data.oci_identity_compartments.network_cmp[0].compartments[0].id, var.compartment_id)
  drg_id               = try(data.oci_core_drgs.drg[0].drgs[0].id, var.drg_id)
  vcn_id               = try(data.oci_core_vcns.vcns[0].virtual_networks[0].id, var.vcn_id)
}