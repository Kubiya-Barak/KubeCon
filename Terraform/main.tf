
terraform {
  required_providers {
    kubiya = {
      source = "kubiya-terraform/kubiya"
    }
  }
}

provider "kubiya" {
  // API key is set as an environment variable KUBIYA_API_KEY
}

resource "kubiya_agent" "kubernetes_crew" {
  name         = var.teammate_name
  runner       = var.kubiya_runner
  description  = var.teammate_description
  instructions = ""
  model        = var.model
  integrations = var.integrations
  users        = var.users
  groups       = var.groups
  sources      = var.sources

  environment_variables = {
    LOG_LEVEL                = var.log_level
    KUBIYA_CACHE_FILES = "1"
  }
}

output "kubernetes_crew" {
  value = kubiya_agent.kubernetes_crew
}
