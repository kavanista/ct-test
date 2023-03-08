resource "google_cloudbuild_trigger" "deploy" {
  github {
    owner = "kavanista"
    name  = "ct-test"
    push {
       branch = "main"
      }
  }
  ignored_files = [".gitignore"]
  filename = "cloudbuild.yaml"
}
