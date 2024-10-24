terraform {

  required_version = ">= 1.8.5"

  required_providers {
    harvester = {
      source  = "harvester/harvester"
      version = "0.6.4"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.6.2"
    }
  }

}
