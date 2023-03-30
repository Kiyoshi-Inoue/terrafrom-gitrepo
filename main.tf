# terraform {
#   required_providers {
#     github = {
#       source  = "integrations/github"
#       version = "~> 5.0"
#     }
#   }
# }

provider "github" {
    token="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"
}

# resource "github_repository" "example_repo" {
#   name="example-repo"
#   description="An example GitHub repository created with Terraform"
#   private=True
#   has_issues=False
#   has_projects=False
#   has_wiki=False
# }


module "repository" {
  source  = "mineiros-io/repository/github"
  version = "~> 0.18.0"

  name               = "example-repository"
  license_template   = "apache-2.0"
  gitignore_template = "Terraform"
}