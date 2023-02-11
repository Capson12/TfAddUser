terraform {
    required_providers {
      azuread = {
        source = "hashicorp/azuread"
        version = "~> 2.33.0"
      }
    }
  
}


variable "User information" {

  type = object {

    firstName = string
    secondName =  string
  }
  
}


resource "azuread_user" "main" {
  user_principal_name = "mike.dude@symtex.dev"
  display_name =  "Mike Dude"
  password = "Password.2021"
  



}

