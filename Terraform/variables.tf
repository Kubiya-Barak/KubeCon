
variable "teammate_name" {
  description = "🤖 Name of the Kubernetes Sidekick teammate"
  type        = string
  default = "Kubernetes Sidekick"
}

variable "kubiya_runner" {
  description = "🏃 Runner (cluster) to use for the teammate"
  type        = string
  default = "kubiya-operator"
}

variable "teammate_description" {
  description = "📝 Description of the Kubernetes Sidekick teammate"
  type        = string
  default     = "Mastering Kubernetes, Github, AWS, as well as Terraform"
}

variable "users" {
  description = "👥 Users who can interact with the teammate"
  type        = list(string)
  default = []
}

variable "groups" {
  description = "👥 Groups who can interact with the teammate"
  type        = list(string)
  default     = ["Admin", "Users"]
}

variable "log_level" {
  description = "📊 Log level for debugging and monitoring"
  type        = string
  default     = "INFO"
}

variable "model" {
  description = "Model of AI to  use"
  type        = string
  default     = "azure/gpt-4o"
}

variable "integrations" {
  description = "Integrations to use"
  type        = list(string)
  default     = ["kubernetes", "slack", "jira", "github"]
}

variable "sources" {
  description = "Sources to use"
  type        = list(string)
  default     = ["Kubernetes Capabilities","Slack Capabilities","Jira CLI"]
}
