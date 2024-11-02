terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
  
  backend "remote" {
    organization = "devops-UNAL-karen"

    workspaces {
      name = "repo-final-exam-devops"
    }
  }
}

provider "local" {}

locals {
  fibonacci_series = [0, 1, 1, 2, 3, 5, 8, 13, 21]
}

output "fibonacci_series" {
  value = local.fibonacci_series
}

# Agregar la opción de no entrada al plan
resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "terraform plan -input=false && terraform apply -input=false"
  }
}
