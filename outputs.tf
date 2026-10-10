output "cognito_identity_pools_id" {
  description = "Map of id values across all cognito_identity_pools, keyed the same as var.cognito_identity_pools"
  value       = { for k, v in aws_cognito_identity_pool.cognito_identity_pools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cognito_identity_pools_allow_classic_flow" {
  description = "Map of allow_classic_flow values across all cognito_identity_pools, keyed the same as var.cognito_identity_pools"
  value       = { for k, v in aws_cognito_identity_pool.cognito_identity_pools : k => v.allow_classic_flow if v.allow_classic_flow != null }
}
output "cognito_identity_pools_allow_unauthenticated_identities" {
  description = "Map of allow_unauthenticated_identities values across all cognito_identity_pools, keyed the same as var.cognito_identity_pools"
  value       = { for k, v in aws_cognito_identity_pool.cognito_identity_pools : k => v.allow_unauthenticated_identities if v.allow_unauthenticated_identities != null }
}
output "cognito_identity_pools_arn" {
  description = "Map of arn values across all cognito_identity_pools, keyed the same as var.cognito_identity_pools"
  value       = { for k, v in aws_cognito_identity_pool.cognito_identity_pools : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cognito_identity_pools_cognito_identity_providers" {
  description = "Map of cognito_identity_providers values across all cognito_identity_pools, keyed the same as var.cognito_identity_pools"
  value       = { for k, v in aws_cognito_identity_pool.cognito_identity_pools : k => v.cognito_identity_providers if v.cognito_identity_providers != null && length(v.cognito_identity_providers) > 0 }
}
output "cognito_identity_pools_developer_provider_name" {
  description = "Map of developer_provider_name values across all cognito_identity_pools, keyed the same as var.cognito_identity_pools"
  value       = { for k, v in aws_cognito_identity_pool.cognito_identity_pools : k => v.developer_provider_name if v.developer_provider_name != null && length(v.developer_provider_name) > 0 }
}
output "cognito_identity_pools_identity_pool_name" {
  description = "Map of identity_pool_name values across all cognito_identity_pools, keyed the same as var.cognito_identity_pools"
  value       = { for k, v in aws_cognito_identity_pool.cognito_identity_pools : k => v.identity_pool_name if v.identity_pool_name != null && length(v.identity_pool_name) > 0 }
}
output "cognito_identity_pools_openid_connect_provider_arns" {
  description = "Map of openid_connect_provider_arns values across all cognito_identity_pools, keyed the same as var.cognito_identity_pools"
  value       = { for k, v in aws_cognito_identity_pool.cognito_identity_pools : k => v.openid_connect_provider_arns if v.openid_connect_provider_arns != null && length(v.openid_connect_provider_arns) > 0 }
}
output "cognito_identity_pools_region" {
  description = "Map of region values across all cognito_identity_pools, keyed the same as var.cognito_identity_pools"
  value       = { for k, v in aws_cognito_identity_pool.cognito_identity_pools : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cognito_identity_pools_saml_provider_arns" {
  description = "Map of saml_provider_arns values across all cognito_identity_pools, keyed the same as var.cognito_identity_pools"
  value       = { for k, v in aws_cognito_identity_pool.cognito_identity_pools : k => v.saml_provider_arns if v.saml_provider_arns != null && length(v.saml_provider_arns) > 0 }
}
output "cognito_identity_pools_supported_login_providers" {
  description = "Map of supported_login_providers values across all cognito_identity_pools, keyed the same as var.cognito_identity_pools"
  value       = { for k, v in aws_cognito_identity_pool.cognito_identity_pools : k => v.supported_login_providers if v.supported_login_providers != null && length(v.supported_login_providers) > 0 }
}
output "cognito_identity_pools_tags" {
  description = "Map of tags values across all cognito_identity_pools, keyed the same as var.cognito_identity_pools"
  value       = { for k, v in aws_cognito_identity_pool.cognito_identity_pools : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "cognito_identity_pools_tags_all" {
  description = "Map of tags_all values across all cognito_identity_pools, keyed the same as var.cognito_identity_pools"
  value       = { for k, v in aws_cognito_identity_pool.cognito_identity_pools : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

