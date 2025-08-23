# GKE Terraform project

This project creates a **minimal GKE cluster** on Google Cloud using Terraform.
It uses a cheap setup by default: **1x e2-micro node in Tokyo**.

---

## How to use

1. Copy `terraform.tfvars.example` → `terraform.tfvars` and add your project ID + credentials path.
2. Run:
   ```bash
   terraform init
   terraform apply

3. Get credentials:
    ```bash
    gcloud container clusters get-credentials cheap-gke-cluster \
    --region asia-northeast1-b \
    --project <your-project-id>
