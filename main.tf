
// FRONTEND
resource "aws_instance" "frontend" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = null
  vpc_security_group_ids = [aws_security_group.instance.id]
  tags = {
    Environment = var.environment
    Name = "frontend-${var.environment}"
  }
}


// BACKEND
resource "aws_instance" "backend" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = null
  vpc_security_group_ids = [aws_security_group.instance.id]
  tags = {
    Environment = var.environment
    Name = "backend-${var.environment}"
  }
}


// MATCHER
resource "aws_instance" "matcher" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = null
  vpc_security_group_ids = [aws_security_group.instance.id]
  tags = {
    Environment = var.environment
    Name = "matcher-${var.environment}"
  }
}

// CRUNCHER
resource "aws_instance" "cruncher" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = null
  vpc_security_group_ids = [aws_security_group.instance.id]
  tags = {
    Environment = var.environment
    Name = "cruncher-${var.environment}"
  }
}

// ALERTMANAGER
#resource "aws_instance" "alertmanager" {
#  ami               = var.ami
#  instance_type     = var.instance_type
#  security_groups      = [var.monitoring_security_group]
#  key_name             = var.key_name
#
#  lifecycle {
#    ignore_changes = [ami]
#  }
#
#  tags = {
#    Name = "monitoring-alertmanager"
#  }
#}

// PROMETHEUS
#resource "aws_instance" "prometheus" {
#  ami               = var.ami
#  instance_type     = var.instance_type
#  security_groups      = [var.monitoring_security_group]
#  key_name             = var.key_name
#
#  lifecycle {
#    ignore_changes = [ami]
#  }
#
#  tags = {
#    Name = "monitoring-prometheus"
#  }
#}

resource "aws_security_group" "instance" {
  name = "terraform-example"
  ingress {
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "security_group_monitoring" {
  name = "monitoring"
  ingress {
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
