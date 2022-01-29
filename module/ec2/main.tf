# ====================
#
# AMI
#
# ====================
# 最新版のAmazonLinux2のAMI情報
data "aws_ami" "example" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "block-device-mapping.volume-type"
    values = ["gp2"]
  }

  filter {
    name   = "state"
    values = ["available"]
  }
}

# ====================
#
# EC2 Instance
#
# ====================
resource "aws_instance" "example" {
  ami                    = data.aws_ami.example.image_id
  vpc_security_group_ids = [
    "${var.sec_grp_id}",
  ]
  subnet_id              = "${var.subnet_id}"
  key_name               = "${var.key_name}"
  instance_type          = "t2.micro"

  tags = {
    Name = "tf-api-salto-theme"
  }
}

# ====================
#
# Elastic IP
#
# ====================
resource "aws_eip" "example" {
  instance = aws_instance.example.id
  vpc      = true
}

# ====================
#
# Key Pair
#
# ====================
# resource "aws_key_pair" "shmizu1111" {
#   key_name   = "shmizu1111"
#   public_key = file("shmizu1111.pem") # 先程`ssh-keygen`コマンドで作成した公開鍵を指定
# }