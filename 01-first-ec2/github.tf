
resource "github_repository" "terraform_example" {
  name        = "terraform_example"
  description = "Created by terraform"

  visibility = "public"
}
