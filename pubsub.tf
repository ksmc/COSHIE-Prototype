resource "google_pubsub_topic" "hl7_test_topic" {
  name = "coshie-hl7-test-topic"
  message_retention_duration = "86600s"
}