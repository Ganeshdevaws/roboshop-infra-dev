resource "aws_ssm_parameter" "mongodb_url" {
  name  = "/${var.project_name}/${var.env}/mongodb_url"
  type  = "String"
  # for DEV it is mongodb-dev.ganeshdevaws.online
  # for PROD it is mongodb-prod.ganeshdevaws.online
  value = "${var.mongodb_record_name}-${var.env}.${var.zone_name}"
}