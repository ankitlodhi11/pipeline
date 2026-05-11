# variable "rgdetails1" {
#   type = map(string)
# }

variable "rgdetails1" {
  type = map(object({
    name     = string
    location = string
   

  }))
}
variable "stgname" {
  type = map(object({
    name                     = string
    rgname                   = string
    location                 = string   
     account_tier             = string
  account_replication_type  = string    
  }))
  
}

