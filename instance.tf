resource "aws_instance" "fai" {
    ami = lookup(var.AMIS, var.AWS_REGION, "")
    instance_type = "t2.micro"
    tags = {
        Name = "fai"
    }
}
