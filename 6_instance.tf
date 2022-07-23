resource "aws_instance" "ec2" {
  ami           = "ami-08df646e18b182346"
  instance_type = "t2.micro"
  ###vpc_id="${aws_vpc.VPC.id}"
  subnet_id = aws_subnet.public_subnet.id
  #subnet_id ="subnet-0e9649740b6d7d87f"
  key_name = aws_key_pair.ssh_key.key_name


  tags = {
    Name = "TF"
  }

}

