terraform {
  # Remote state on UpCloud Object Storage (S3-compatible)
  backend "s3" {
    bucket                      = "Your-bucket-name" # change to your bucket
    key                         = "your-preferred-key-environment/terraform.tfstate"
    endpoint                    = "Your-bucket-endpoint" # change to your endpoint
    region                      = "de-fra1"              # required by S3 API, any string
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    use_path_style              = true
    # Uses AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY from env
  }

  # Client-side encryption for state and plan (OpenTofu 1.7+)
  encryption {
    key_provider "pbkdf2" "main" {
      passphrase = "our-Random-Phrase" #Preferrably via environment variables
    }

    method "aes_gcm" "default" {
      keys = key_provider.pbkdf2.main
    }

    state { method = method.aes_gcm.default }
    plan { method = method.aes_gcm.default }
  }

}

