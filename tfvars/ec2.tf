# dev-table-multi-envi
# prod-table-multi-envi
# dev-multi-envi
# prod-multi-envi

resource "aws_instance" "multi-envi" {
    for_each = var.instance_name
    ami = data.aws_ami.ami_data_full-info.id
    vpc_security_group_ids = ["sg-0d945c5ec2a256613"]
    instance_type = each.value 
    tags = merge(var.common_tags,{
        Name = "${each.key}"
        module = "${each.key}"
        Environment = var.environment
    })


  
}
# db-dev = "t2.small"
# backend-dev = "t3.micro"
# frontend-dev = "t3.micro"
