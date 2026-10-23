# OVH DNS API permissions for Caddy

This guide creates an OVH API token for Caddy to use when completing ACME DNS-01 challenges for `liljalab.com`.

## Create the OVH API token

1. Open OVHcloud’s API token creation page and sign in.
2. Give the token a recognizable name, such as `Caddy DNS challenge`.
3. Add a description, for example `Allow Caddy to manage ACME challenge records for liljalab.com`.
4. Choose a validity period that suits your setup.
5. Add each method-and-path pair below as a separate permission.

| Method   | Path                                 |
|----------|--------------------------------------|
| `GET`    | `/domain/zone/liljalab.com/record`   |
| `POST`   | `/domain/zone/liljalab.com/record`   |
| `GET`    | `/domain/zone/liljalab.com/record/*` |
| `PUT`    | `/domain/zone/liljalab.com/record/*` |
| `DELETE` | `/domain/zone/liljalab.com/record/*` |
| `GET`    | `/domain/zone/liljalab.com/soa`      |
| `POST`   | `/domain/zone/liljalab.com/refresh`  |

6. Create the token and save the credentials OVH displays:
   - Application key
   - Application secret
   - Consumer key

Keep these credentials secret. Do not commit them to this repository. At the time of writing your options are 1Password or SOPS.

## Configure Caddy

Caddy needs the OVH DNS provider module. If your Caddy build does not include it, build or download a custom Caddy binary with the `github.com/caddy-dns/ovh` module.

Make the credentials available to the Caddy process as environment variables:

```sh
OVH\_ENDPOINT=your-ovh-api-endpoint
OVH\_APPLICATION\_KEY=your-application-key
OVH\_APPLICATION\_SECRET=your-application-secret
OVH\_CONSUMER\_KEY=your-consumer-key
