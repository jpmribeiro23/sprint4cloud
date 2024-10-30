# Configuração do Terraform para o provedor AWS
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"  # Certifique-se de usar uma versão atualizada
    }
  }
}


# Definição da instância EC2
resource "aws_instance" "ocr_server" {
  ami           = "ami-0c55b159cbfafe1f0"  # AMI Amazon Linux
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "OCR-Identification-Server"
  }
}

# Definição do Bucket S3
resource "aws_s3_bucket" "ocr_images_bucket" {
  bucket = "ocr-images-storage-bucket"

  tags = {
    Name = "OCR Images Storage"
  }
}
