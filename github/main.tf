provider "github" {
    token = "${var.github_token}"
    organization = "${var.github_organization}"
}

resource "github_repository" "iac-devopsng" {
  name        = "iac-devopsng"
  description = "DevOps NG Accelerate"

  private = false
}

resource "github_branch" "master" {
  repository = github_repository.iac-devopsng.name
  branch     = "iac-terraform"
}
