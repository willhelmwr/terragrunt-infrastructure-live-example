locals {
  module = read_terragrunt_config("../../../_env/frontend.hcl")
}

terraform {
  source = local.module.locals.source
}

include {
  path = find_in_parent_folders()
}

inputs = local.module.inputs