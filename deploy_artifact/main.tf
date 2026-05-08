resource "oci_devops_deploy_artifact" "this" {
  argument_substitution_mode = var.argument_substitution_mode
  deploy_artifact_source {
    deploy_artifact_source_type = var.deploy_artifact_source.deploy_artifact_source_type
    base64encoded_content       = var.deploy_artifact_source.base64encoded_content
    chart_url                   = var.deploy_artifact_source.chart_url
    deploy_artifact_path        = var.deploy_artifact_source.deploy_artifact_path
    deploy_artifact_version     = var.deploy_artifact_source.deploy_artifact_version
    helm_artifact_source_type   = var.deploy_artifact_source.helm_artifact_source_type
    dynamic "helm_verification_key_source" {
      for_each = var.deploy_artifact_source.helm_verification_key_source[*]
      iterator = hvks
      content {
        verification_key_source_type = hvks.value.verification_key_source_type
        current_public_key           = hvks.value.current_public_key
        previous_public_key          = hvks.value.previous_public_key
        vault_secret_id              = hvks.value.vault_secret_id
      }
    }
    image_digest  = var.deploy_artifact_source.image_digest
    image_uri     = var.deploy_artifact_source.image_uri
    repository_id = var.deploy_artifact_source.repository_id
  }
  deploy_artifact_type = var.deploy_artifact_type
  project_id           = var.project_id
  defined_tags         = var.defined_tags
  description          = var.description
  display_name         = var.display_name
  freeform_tags        = var.freeform_tags
}
