# Website Terraform Code

This contains all the source code required to create a static website with a CDN and security headers.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| certificate\_name | The certificate domain, this varies from the domain name as this can be a wildcard. | string | `"andrewjohnperry.com"` | no |
| domain\_name | The domain name for the website. | string | n/a | yes |
| ref | The version of the terraform module that should be used. | string | n/a | yes |

