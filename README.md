**Terraform to deploy EKS and helm chart dependency**

This project deploy eks and helm chart with it dependency
code structure 

*Terraform*


![image](https://github.com/user-attachments/assets/98342c66-2508-4418-8498-066de723665b)


*Helm chart*


![image](https://github.com/user-attachments/assets/d0b82328-87e6-4ca5-8bea-801a63bbd2bf)


```main.tf      -  all provider like aws and helm, used local state but we can use remote too
variable.tf     -  define variable 
var.tfvars      -  variable values 
output.tf       -  output for service name,arn,endpoint etc 
eks.tf           -  all eks cluster related config. like cluster role and policy, eks cluster, node role and policy and node scaling policy 
helm.tf         -  define helm_release to deploy helm chart and we need to use dependency_update=true to deploy dependency


charts/    -  if you run `helm dependency update cron-and-dependency  from local machine, download all dependencies into charts directory.
chart.yaml -  mysql dependency 

template/cronjob.yaml - define cronjob settings 
    
values.yaml - define all values to deploy helm

Run following commands 
terraform init 
terraform plan --var-file=var.tfvars  
terraform apply --var-file=var.tfvars
