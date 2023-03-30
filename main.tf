provider "github" {
    token="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"
}

resource "github_repository" "example_repo" {
  name="example-repo"
  description="An example GitHub repository created with Terraform"
  private=True
  has_issues=False
  has_projects=False
  has_wiki=False
}