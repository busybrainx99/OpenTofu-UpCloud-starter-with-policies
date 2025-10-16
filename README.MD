# OpenTofu + UpCloud starter (encrypted remote state, policy checks, Terraform verification)

This repo is a minimal, runnable starter for deploying an UpCloud VM with OpenTofu using:
- Encrypted remote state on UpCloud Object Storage (S3 compatible)
- Policy checks with Rego
- A migration step to local state so Terraform can verify “no changes”

> Use this as the base for CI, guardrails, and the follow-up article.

---

## Prerequisites

- OpenTofu v1.7 or newer  
- Terraform (latest) for the verification step  
- Conftest (for Rego policy checks)  
- An UpCloud account with:
  - Object Storage bucket + access key and secret
  - Subaccount with API access (username and password)

Helpful links:
- OpenTofu install: https://opentofu.org/docs/
- Terraform install: https://developer.hashicorp.com/terraform/install
- Conftest: https://www.conftest.dev/

---

## Quick start

### 1) Clone and prepare env

```bash
git clone <this-repo> opentofu-upcloud-starter
cd opentofu-upcloud-starter

cp .env.example .env
# edit .env and fill values, then:
source .env
