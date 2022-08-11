// Google Cloud Storage bucket
resource "google_storage_bucket" "google-bucket" {
  name     = "kiran-cloud-storage"
  location = "us-central1"
}