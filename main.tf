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

# Crear un output para cada número de la serie de Fibonacci
output "fibonacci_0" {
  value = local.fibonacci_series[0]
}

output "fibonacci_1" {
  value = local.fibonacci_series[1]
}

output "fibonacci_2" {
  value = local.fibonacci_series[2]
}

output "fibonacci_3" {
  value = local.fibonacci_series[3]
}

output "fibonacci_4" {
  value = local.fibonacci_series[4]
}

output "fibonacci_5" {
  value = local.fibonacci_series[5]
}

output "fibonacci_6" {
  value = local.fibonacci_series[6]
}

output "fibonacci_7" {
  value = local.fibonacci_series[7]
}

output "fibonacci_8" {
  value = local.fibonacci_series[8]
}
