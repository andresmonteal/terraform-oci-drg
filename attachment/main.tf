resource "oci_core_drg_attachment" "main" {
  #Required
  drg_id = local.drg_id

  #Optional
  defined_tags  = var.defined_tags
  display_name  = "att-${var.drg_name}"
  freeform_tags = local.merged_freeform_tags
  network_details {
    #Required
    id   = local.vcn_id
    type = "VCN"

    #Optional
    route_table_id = var.route_table_id
    vcn_route_type = "VCN_CIDRS"
  }
}