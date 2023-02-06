terraform {
  required_version = ">= 0.15"
  required_providers {
    system = {
      source  = "neuspaces/system"
      version = ">= 0.3.0"
    }
    time = {
      source  = "hashicorp/time"
      version = ">= 0.9.1"
    }
  }
}