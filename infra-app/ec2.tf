resource "aws_key_pair" "my_key" {
    key_name = "${var.environment}-infra-app-key"
    public_key = file("./keys/${var.environment}-infra-app-key.pub")


    tags = {
      Name = "${var.environment}-infra-app-key"
      Environment = var.environment
    }
  
}

resource "aws_default_vpc" "default" {
    
}

resource "aws_security_group" "my_security_group"{
    name = "${var.environment}-infra-app-sg"
    vpc_id = aws_default_vpc.default.id
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "${var.environment}-infra-app-sg"
        Environment = var.environment
    }
}

resource "aws_instance" "my_instance" {
    count = var.instance_count
    ami = var.ec2_ami_id
    instance_type = var.instance_type
    key_name = aws_key_pair.my_key.key_name
    security_groups = [aws_security_group.my_security_group.name]
    depends_on = [ aws_security_group.my_security_group, aws_key_pair.my_key]
    root_block_device {
        volume_size = var.environment == "prod"? 16: 8
        volume_type = "gp3"
    }
    
    tags = {
        Name = "${var.environment}-infra-app-instance"
        Environment = var.environment
    }
}
    