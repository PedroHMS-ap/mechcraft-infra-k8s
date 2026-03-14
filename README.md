# MechCraft Infra K8s Terraform

Repositorio dedicado ao provisionamento do cluster Kubernetes da plataforma.

## Recursos provisionados

- Resource Group
- Virtual Network
- Subnet do AKS
- AKS cluster com base para HPA

## Tecnologias

- Terraform
- Azure AKS
- GitHub Actions

## Estrutura

- `terraform/`: codigo Terraform
- `.github/workflows/terraform.yml`: validacao e deploy
- `docs/ARCHITECTURE.md`: diagrama do repositorio

## Arquitetura

- [Diagrama da infraestrutura K8s](docs/ARCHITECTURE.md)

## Execucao local

```powershell
cd terraform
terraform init
terraform plan -var-file="terraform.tfvars"
```

Use [`terraform/terraform.tfvars.example`](terraform/terraform.tfvars.example) como base.

## CI/CD

- PR em `homolog` e `main`: `fmt`, `init -backend=false` e `validate`
- Push em `homolog`: `plan` + `apply`
- Push em `main`: `plan` + `apply`

Secrets esperados:

- `AZURE_CREDENTIALS`
- `AZURE_SUBSCRIPTION_ID`
- `AZURE_TENANT_ID`

## Swagger / Postman

Nao se aplica a este repositorio. A documentacao da API provisionada por este ambiente fica no repositorio `mechcraft-app-k8s`.
