# main.tf

terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

# Definición manual de la serie de Fibonacci hasta el número 21
locals {
  fibonacci_series = [0, 1, 1, 2, 3, 5, 8, 13, 20]
}

# Imprime la serie de Fibonacci en la consola
output "fibonacci_series" {
  value = local.fibonacci_series
}
