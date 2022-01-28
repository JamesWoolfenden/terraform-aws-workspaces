# terraform-aws-workspaces

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-workspaces/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-workspaces)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-workspaces.svg)](https://github.com/JamesWoolfenden/terraform-aws-workspaces/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-workspaces.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-workspaces/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-workspaces/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-workspaces&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-workspaces/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-workspaces&benchmark=INFRASTRUCTURE+SECURITY)

Draft module to create AWS Workspaces.

## Usage

This is a very basic example (so far).

![workspaces](./diagram/workspaces.png)

To implement include af file in your repository in your existing Terraform code:

```hcl
module "workspaces" {
  source                 = "jameswoolfenden/workspaces/aws"
  version                = "v0.0.11"
  common_tags            = var.common_tags
}
```

## Detailed Notes

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

No requirements.

## Providers

| Name                                             | Version |
| ------------------------------------------------ | ------- |
| <a name="provider_aws"></a> [aws](#provider_aws) | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                                                                  | Type        |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [aws_workspaces_directory.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/workspaces_directory)                     | resource    |
| [aws_workspaces_workspace.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/workspaces_workspace)                  | resource    |
| [aws_directory_service_directory.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/directory_service_directory) | data source |
| [aws_workspaces_bundle.bundle](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/workspaces_bundle)                      | data source |

## Inputs

| Name                                                                                                                        | Description                                        | Type       | Default                  | Required |
| --------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------- | ---------- | ------------------------ | :------: |
| <a name="input_bundle_id"></a> [bundle_id](#input_bundle_id)                                                                | (optional) describe your variable                  | `string`   | `"wsb-bh8rsxt14"`        |    no    |
| <a name="input_common_tags"></a> [common_tags](#input_common_tags)                                                          | This is to help you add tags to your cloud objects | `map(any)` | n/a                      |   yes    |
| <a name="input_directory_id"></a> [directory_id](#input_directory_id)                                                       | (optional) describe your variable                  | `string`   | n/a                      |   yes    |
| <a name="input_root_volume_encryption_enabled"></a> [root_volume_encryption_enabled](#input_root_volume_encryption_enabled) | n/a                                                | `bool`     | `true`                   |    no    |
| <a name="input_user_name"></a> [user_name](#input_user_name)                                                                | n/a                                                | `string`   | n/a                      |   yes    |
| <a name="input_user_volume_encryption_enabled"></a> [user_volume_encryption_enabled](#input_user_volume_encryption_enabled) | n/a                                                | `bool`     | `true`                   |    no    |
| <a name="input_volume_encryption_key"></a> [volume_encryption_key](#input_volume_encryption_key)                            | (optional) describe your variable                  | `string`   | `"alias/aws/workspaces"` |    no    |

## Outputs

| Name                                                           | Description   |
| -------------------------------------------------------------- | ------------- |
| <a name="output_directory"></a> [directory](#output_directory) | The directory |
| <a name="output_workspace"></a> [workspace](#output_workspace) | The workspace |

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

Copyright © 2019-2022 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-workspaces&url=https://github.com/jameswoolfenden/terraform-aws-workspaces
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-workspaces&url=https://github.com/jameswoolfenden/terraform-aws-workspaces
[share_reddit]: https://reddit.com/submit/?url=https://github.com/jameswoolfenden/terraform-aws-workspaces
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/jameswoolfenden/terraform-aws-workspaces
[share_email]: mailto:?subject=terraform-aws-workspaces&body=https://github.com/jameswoolfenden/terraform-aws-workspaces
