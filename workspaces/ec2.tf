resource "aws_instance" "workspaces" {
    ami = "ami-041e2ea9402c46c32"
    vpc_security_group_ids = ["sg-0d945c5ec2a256613"]
    instance_type = lookup(var.instance_name, terraform.workspace)

    tags = merge(var.common_tags,{
      Name = "workspaces"
      module = "workspaces"

    })
}