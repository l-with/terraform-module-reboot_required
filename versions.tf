terraform {
  required_version = ">= 0.15"
  required_providers {
    system = {
      source  = "neuspaces/system"
      version = ">= 0.3.0"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 3.2.1"
    }
  }
}