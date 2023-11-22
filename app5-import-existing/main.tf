
resource "aws_instance" "demo" {
  ami                         = "ami-0230bd60aa48260c6"
  associate_public_ip_address = true
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  ipv6_address_count          = 0
  key_name                    = "ec2-key"
  monitoring                  = false
  security_groups             = ["launch-wizard-1"]
  source_dest_check           = true
  subnet_id                   = "subnet-06fc61d84ec3b52b2"
  tags = {
    Name = "imported server"
    env  = "dev"
    Team = "devops"
  }

}
