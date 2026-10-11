variable "network_connectivity_hub_iam_members" {
  description = <<EOT
Map of network_connectivity_hub_iam_members, attributes below
Required:
    - hub
    - member
    - role
Optional:
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    hub     = string
    member  = string
    role    = string
    project = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

