# OVH API permissions for Terraform domain lookup

This guide creates an OVH API token for Terraform to read the registration details for `liljalab.com`.

## Create the OVH API token

1. Open OVHcloud’s API token creation page and sign in.
2. Give the token a recognizable name, such as `Terraform domain lookup`.
3. Add a description, for example `Allow Terraform to read liljalab.com`.
4. Choose a validity period that suits your setup.
5. Add this method-and-path pair as a permission:

| Method | Path                   |
|--------|------------------------|
| `GET`  | `/domain/liljalab.com` |

6. Create the token and save the credentials OVH displays:
   - Application key
   - Application secret
   - Consumer key

Keep these credentials secret. Do not commit them to this repository. Store them in a secrets manager, such as 1Password, or encrypt them with SOPS.

This permission is read-only; it does not allow Terraform to order, change, or delete the domain.