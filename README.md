[![Slalom][logo]](https://slalom.com)

# terraform-aws-workspaces

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-workspaces/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-workspaces)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-workspaces.svg)](https://github.com/JamesWoolfenden/terraform-aws-workspaces/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

Draft module to create AWS Workspaces.

## Usage

This is a very basic example (so far).

![workspaces](./diagram/workspaces.png)

Include this repository as a module in your existing Terraform code:

```hcl
module "workspaces" {
  source                 = "jameswoolfenden/workspaces/aws"
  version                = "v0.0.5"
  common_tags            = var.common_tags
}
```

## Detailed Notes

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| bundle\_id | (optional) describe your variable | `string` | `"wsb-bh8rsxt14"` | no |
| common\_tags | This is to help you add tags to your cloud objects | `map` | n/a | yes |
| directory\_id | (optional) describe your variable | `string` | n/a | yes |
| root\_volume\_encryption\_enabled | n/a | `bool` | `true` | no |
| user\_name | n/a | `string` | n/a | yes |
| user\_volume\_encryption\_enabled | n/a | `bool` | `true` | no |
| volume\_encryption\_key | (optional) describe your variable | `string` | `"alias/aws/workspaces"` | no |

## Outputs

| Name | Description |
|------|-------------|
| directory | The directory |
| workspace | The workspace |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Related Projects

Check out these related projects.

- [terraform-aws-codecommit](https://github.com/jameswoolfenden/terraform-aws-workspaces) - Storing ones code

## Help

**Got a question?**

File a GitHub [issue](https://github.com/jameswoolfenden/terraform-aws-workspaces/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/jameswoolfenden/terraform-aws-workspaces/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2020 [Slalom, LLC](https://slalom.com)

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[logo]: https://gist.githubusercontent.com/JamesWoolfenden/5c457434351e9fe732ca22b78fdd7d5e/raw/15933294ae2b00f5dba6557d2be88f4b4da21201/slalom-logo.png
[website]: https://slalom.com
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden

[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-workspaces&url=https://github.com/jameswoolfenden/terraform-aws-workspaces
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-workspaces&url=https://github.com/jameswoolfenden/terraform-aws-workspaces
[share_reddit]: https://reddit.com/submit/?url=https://github.com/jameswoolfenden/terraform-aws-workspaces
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/jameswoolfenden/terraform-aws-workspaces
[share_email]: mailto:?subject=terraform-aws-workspaces&body=https://github.com/jameswoolfenden/terraform-aws-workspaces
