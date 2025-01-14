terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.82.2"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }

  # Configuração do backend S3 para armazenar o estado
  backend "s3" {
    bucket  = "devops-state-bucket-tf"
    region  = "us-east-2"
    key     = "terraform.tfstate"
    encrypt = true
    profile = "erick" # Especificando o perfil diretamente no backend
  }
}

# Configuração do provedor AWS
provider "aws" {
  profile = "erick" # Nome do perfil AWS configurado (certifique-se de que o perfil esteja configurado corretamente)
}

# Configuração do provedor Random (para gerar valores aleatórios, se necessário)
provider "random" {}

# Criação do bucket S3 para armazenar o estado do Terraform
resource "aws_s3_bucket" "terraform_state" {
  bucket = "devops-state-bucket-tf" # Nome do bucket S3

  lifecycle {
    prevent_destroy = false # Evita que o bucket seja destruído acidentalmente
  }
}

# Habilitar versionamento do bucket S3
resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.bucket # Referência ao bucket criado anteriormente

  versioning_configuration {
    status = "Enabled" # Habilitar o versionamento no bucket
  }

  depends_on = [aws_s3_bucket.terraform_state] # Garante que o bucket seja criado antes do versionamento
}
