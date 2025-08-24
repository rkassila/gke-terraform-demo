# GKE Terraform demo project

This project provisions a **Google Kubernetes Engine (GKE)** cluster on **Google Cloud Platform (GCP)** using Terraform.  
It is a simple example to demonstrate Infrastructure as Code (IaC) with Terraform and GCP.

---

## 📂 Project Structure
```
.
├── main.tf # Terraform resources (GKE cluster, networking, etc.)
├── variables.tf # Input variables
├── outputs.tf # Outputs (cluster endpoint, name, etc.)
├── terraform.tfvars # Variable values (ignored from git usually)
└── README.md # Documentation
```

---

## ⚙️ Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) **v1.5+**
- [Google Cloud SDK](https://cloud.google.com/sdk/docs/install) installed and authenticated
- A Google Cloud project with **billing enabled**
- Enabled APIs:
  - `container.googleapis.com` (Kubernetes Engine API)
  - `compute.googleapis.com` (Compute Engine API)

Authenticate once with:

```bash
gcloud auth application-default login
```


## How to Run

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/your-repo.git
   cd your-repo

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

2. **Initialize Terraform**
```bash
terraform init
```

3. **Validate the configuration**
```bash
terraform validate
```

4. **Preview changes**
```bash
terraform plan -var-file="terraform.tfvars"
```

5. **Apply and create resources**
```bash
terraform apply -var-file="terraform.tfvars"
```

Type yes when prompted to confirm.
