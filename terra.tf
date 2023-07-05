
// FRONTEND
resource "aws_instance" "frontend" {
  ami = var.ami
  instance_type          = var.instance_type
  key_name               = "user1"
  #monitoring             = true
  #vpc_security_group_ids = ["sg-12345678"]
  #subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}


// BACKEND
resource "aws_instance" "backend" {
  ami = var.ami
  instance_type          = var.instance_type
  key_name               = "user1"
  #monitoring             = true
  #vpc_security_group_ids = ["sg-12345678"]
  #subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}


// MATCHER
resource "aws_instance" "matcher" {
  ami = var.ami
  instance_type          = var.instance_type
  key_name               = "user1"
  #monitoring             = true
  #vpc_security_group_ids = ["sg-12345678"]
  #subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

// CRUNCHER
resource "aws_instance" "cruncher" {
  ami = var.ami
  instance_type          = var.instance_type
  key_name               = "user1"
  #monitoring             = true
  #vpc_security_group_ids = ["sg-12345678"]
  #subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}



resource "aws_security_group" "instance" {
  name = "terraform-example"
  ingress {
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
