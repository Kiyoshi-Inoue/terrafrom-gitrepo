terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
    token=${{ secrets.TF_GITACT}}
}

resource "github_repository" "example_repo" {
  name="example-repo"
  description="An example GitHub repository created with Terraform"
  private=True
  has_issues=False
  has_projects=False
  has_wiki=False
}