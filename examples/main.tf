// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

module "drg" {
  source = "../"

  tenancy_ocid = var.tenancy_ocid
  compartment  = var.compartment
  name         = var.name
}