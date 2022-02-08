terraform {
    required_providers {
      mongodbatlas = {
          source = "mongodb/mongodbatlas"
          # version = "4.4"
      }
    }
    required_version = ">=0.13"
}