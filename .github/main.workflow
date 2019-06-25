workflow "Publish repository description" {
  on = "push"
  resolves = ["Update Docker Hub Repository Description"]
}

action "Filter master branch" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "Update Docker Hub Repository Description" {
  needs = ["Filter master branch"]
  uses = "peter-evans/dockerhub-description@v1.0.0"
  secrets = ["DOCKERHUB_USERNAME", "DOCKERHUB_PASSWORD", "DOCKERHUB_REPOSITORY"]
}
