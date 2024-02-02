
# general oci parameters
variable "tenancy_ocid" {
  description = "The OCID of the root compartment."
  type        = string
  default     = null
}

variable "compartment_id" {
  description = "compartment id where to create all resources"
  type        = string
  default     = null
}

variable "compartment" {
  description = "compartment id where to create all resources"
  type        = string
  default     = null
}

variable "vcn_id" {
  type        = string
  description = "The VCN ID to use with the attachment."
  default     = null
}

variable "vcn_name" {
  type        = string
  description = "The VCN name to use with the attachment."
  default     = null
}


variable "freeform_tags" {
  description = "simple key-value pairs to tag the created resources using freeform OCI Free-form tags."
  type        = map(any)
  default     = null
}

variable "defined_tags" {
  description = "predefined and scoped to a namespace to tag the resources created using defined tags."
  type        = map(string)
  default     = null
}

variable "drg_name" {
  description = "(Updatable) Name of dynamic routing gateway"
  type        = string
  default     = ""
}

variable "drg_att_name" {
  description = "(Updatable) Name of dynamic routing gateway attachment"
  type        = string
  default     = null
}

variable "drg_id" {
  description = "(Updatable) Id of dynamic routing gateway"
  type        = string
  default     = null
}

variable "route_table_id" {
  description = "(Required) The route table ocid to assign the attachment."
  type        = string
}