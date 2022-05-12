provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "server001" {
    # (AMI) Amazon Machine Images: Canonical, Ubuntu, 22.04 LTS, amd64 jammy image build on 2022-04-20
    ami = "ami-09d56f8956ab235b3"
    
    # Instance Type t2.micro: 1vCPU, 1GB Ram
    instance_type = "t2.micro"
    
    # Security groups sg_learning_terraform: Only access in port 22 SSH
    security_groups = ["sg_learning_terraform"]
    
    # Instance access with ssh-key: key_learning_terraform 
    key_name = "key_learning_terraform"

    tags = {
        "Name" = "server001"
        "Environment" = "staging"
    }
}

output "public_ip" {
    # Show output console public ip of instance
    value = aws_instance.server001.public_ip
}
output "public_dns" {
    # Show output console public dns of instance
    value = aws_instance.server001.public_dns
}