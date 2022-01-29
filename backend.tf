// 参考記事(backend): https://www.terraform.io/language/settings/backends/s3
terraform {
  backend "s3" {
    bucket  = "terrafrom-api-salto-theme-tfstate"
    key     = "terraform.tfstate"
    region  = "ap-northeast-1"
    profile = "my-aws-profile"
  }
}

