// AWS provider
provider "aws" {
  region     = "us-east-1"
}

// Google provider
provider "google" {
  project     = "" // Set the google project
  region      = "us-central1"
  zone        = "us-central1-c"
  credentials = "" // Include google service account key file i.e. json
}