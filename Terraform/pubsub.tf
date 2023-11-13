resource "google_pubsub_topic" "hl7_test_topic" {
  name = "coshie-hl7-test-topic"
  message_retention_duration = "86600s"
}

resource "google_project_iam_member" "hl7_pubsub_binding" {
    project = "${var.project_id}"
    role = "roles/pubsub.publisher"
    member = "serviceAccount:service-${var.project_number}@gcp-sa-healthcare.iam.gserviceaccount.com"
}

resource "google_healthcare_hl7_v2_store" "store" {
  provider = google-beta
  name    = "coshie-test-hl7-v2-store"
  dataset = google_healthcare_dataset.dataset.id
  
  parser_config {
    allow_null_header  = false
    segment_terminator = "Jw=="
    version            = "V2"
  }

  notification_configs {
    pubsub_topic = google_pubsub_topic.hl7_test_topic.id
  }

  
}

resource "google_healthcare_dataset" "dataset" {
  provider = google-beta
  name     = "test-hl7-dataset"
  location = "us-central1"
}