# OpenTofu + UpCloud starter (state, encryption, VM)

This repo is the hands-on companion to **“OpenTofu 101”** and will be referenced by **“OpenTofu vs Terraform: Drop-In or Divergence?”**.  
It shows provider config, remote state on S3-compatible object storage, client-side state encryption, a tiny VM, outputs, and basic commands.

## Prerequisites
- OpenTofu ≥ 1.7 installed (`tofu version`)
- UpCloud account with API access
- S3-compatible object storage bucket on UpCloud (endpoint, bucket, access keys)
- Export required environment variables (see `env.example`)

## Folder structure
See the repository tree in the root of this project.

## Quick start

1. Copy env template and export:
   ```bash
   cp env.example .env && source .env
