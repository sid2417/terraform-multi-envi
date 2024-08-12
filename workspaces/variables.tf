variable "instance_name" {
    type = map      
    default = {
        dev = "t3.micro"
        prod = "t2.small"
    }
  
}


variable "common_tags" {
    default = {
        Project="workspace"
        Terraform=true

    }
  
}