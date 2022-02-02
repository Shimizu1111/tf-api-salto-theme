# tf-api-salto-theme

### 対象のサーバ
https://github.com/Shimizu1111/api-salto-theme


### 初期設定
```
export AWS_ACCESS_KEY_ID=****
export AWS_SECRET_ACCESS_KEY=****
export AWS_DEFAULT_REGION=ap-northeast-1
```

このファイルの****の部分は絶対記入しない

### 操作方法
* terraform init
* terraform plan
* terrafomr apply
* terraform fmt


### 修正方針
* 修正前にterraform planを打ち、修正内容以外で差分があるか確認
* 差分がすでに存在していた場合は、terraformとAWSが同じになるようにterraformを修正
* terraform planを再度うち、修正に差分がないことを確認
* terraformで修正する


### 既存リソースの修正方針
* 修正前にterraform planを打ち、修正内容以外で差分があるか確認
* 差分がすでに存在していた場合は、terraformとAWSが同じになるようにterraformを修正
* terraform planを再度うち、修正に差分がないことを確認
* AWS上で手作業で設定を行う
* terraformとAWSで差分が出ないようにterraformを修正する


### インフラの構成
* VPC
* SG
* EC2

### 今後学びたいインフラの技術
* RDS
* Parameter Store
* ELB
* Route53
* CloudFront
* ASG
* IAM
* ECS(FARGATE)
* ECR
* ALB
* acm_certificate
* bastion
* croudfront
* aws_inspector
* cloudwatch
* waf_cf
* waf_region
* datadog
  * monitor
  * synthetics
  * slo
  * dashbord

