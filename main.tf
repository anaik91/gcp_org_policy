variable access_token {}


provider "google" {
  access_token = var.access_token
}

data "google_project_organization_policy" "policy" {
  project    = "airline1-sabre-wolverine"
  constraint = "constraints/storage.publicAccessPrevention"
}

output "version" {
  value = data.google_project_organization_policy.policy.version
}
