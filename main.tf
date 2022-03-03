terraform {
  required_version = ">= 1.0"
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      version = "1.38.0"
    }
    random = {
      source = "hashicorp/random"
    }
  }
}


provider "ibm" {
}


resource "random_id" "name1" {
  byte_length = 2
}


resource "ibm_is_vpc" "vpc1" {
  name = "vpc-${random_id.name1.hex}"
}


