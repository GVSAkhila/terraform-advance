commands   to initilize

 terraform init -backend-config=dev/backend.tf
 terraform plan -var-file=dev/dev.tfvars
 terraform plan -var-file="dev/dev.tfvars"
terraform apply -var-file="dev/dev.tfvars" -auto-approve
 terraform init -reconfigure -backend-config=prod/backend.tf
 terraform plan -var-file="prod/prod.tfvars"
