resource "google_project_service" "bigquery" {
  project = google_project.project.project_id
  service = "bigquery.googleapis.com"
}

resource "google_bigquery_dataset" "dataset" {
  dataset_id                    = "test_fhir_integration"
  project                       = google_project.project.project_id
  location                      = "US"  
}