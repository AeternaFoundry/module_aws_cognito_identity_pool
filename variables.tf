variable "cognito_identity_pools" {
  description = <<EOT
Map of cognito_identity_pools, attributes below
Required:
    - identity_pool_name
Optional:
    - allow_classic_flow
    - allow_unauthenticated_identities
    - developer_provider_name
    - openid_connect_provider_arns
    - region
    - saml_provider_arns
    - supported_login_providers
    - tags
    - tags_all
    - cognito_identity_providers (block):
        - client_id (optional)
        - provider_name (optional)
        - server_side_token_check (optional)
EOT

  type = map(object({
    identity_pool_name               = string
    allow_classic_flow               = optional(bool)
    allow_unauthenticated_identities = optional(bool)
    developer_provider_name          = optional(string)
    openid_connect_provider_arns     = optional(set(string))
    region                           = optional(string)
    saml_provider_arns               = optional(list(string))
    supported_login_providers        = optional(map(string))
    tags                             = optional(map(string))
    tags_all                         = optional(map(string))
    cognito_identity_providers = optional(list(object({
      client_id               = optional(string)
      provider_name           = optional(string)
      server_side_token_check = optional(bool)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cognito_identity_pools : (
        v.developer_provider_name == null || (length(v.developer_provider_name) <= 100)
      )
    ])
    error_message = "[from validProviderDeveloperName: invalid when len(value) > 100]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cognito_identity_pools : (
        v.supported_login_providers == null || (alltrue([for x in v.supported_login_providers : length(x) >= 1]))
      )
    ])
    error_message = "[from validSupportedLoginProviders: invalid when len(value) < 1]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cognito_identity_pools : (
        v.supported_login_providers == null || (alltrue([for x in v.supported_login_providers : length(x) <= 128]))
      )
    ])
    error_message = "[from validSupportedLoginProviders: invalid when len(value) > 128]"
  }
  # Note: 11 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

