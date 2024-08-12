# ec2 instance
# ami instanceName instanceType SG tags

variable "instance_name" {
    type = map  
    default = {
        # db-dev = "t2.small"
        # backend-dev = "t3.micro"
        # frontend-dev = "t3.micro"
        
    }
}

variable "environment" {
    # default = "dev"
  
}

variable "domain_name" {
    type = string
    default = "happywithyogamoney.fun"
  
}

variable "common_tags" {
    type = map
    default = {
      Project = "Expense"
      Terraform = "true"
    }
}


variable "zone_id" {
    default = "Z07446043T80DLS7R4CPO"
  
}
