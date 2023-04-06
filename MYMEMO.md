# runtfmodule

```bash
terraform validate
terraform init
terraform plan -out="wa.tfplan"
terraform apply -out="wa.tfplan"
terraform apply "wa.tfplan"

var-file  way :

terraform plan -var-file=./environments/test.tfvars out="wa.tfplan"
```
