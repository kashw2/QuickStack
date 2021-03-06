# QuickStack

[![Client](https://github.com/kashw2/QuickStack/actions/workflows/client.yml/badge.svg)](https://github.com/kashw2/QuickStack/actions/workflows/client.yml)

[![Terraform](https://github.com/kashw2/QuickStack/actions/workflows/terraform.yml/badge.svg)](https://github.com/kashw2/QuickStack/actions/workflows/terraform.yml)

QuickStack is an All in One solution to the tough choices that many people and small businesses find themselves in when
starting out on their next project or capital venture. It sees and acknowledges the issues that exist in this field of
play and offers itself as a solution meets initial needs but also understands the need to scale outside the bounds of
what some other 'QuickApps' or 'QuickStarts' may offer in comparison.

## Requirements

### Technology

| Name                                   | Description                         | Version |
|----------------------------------------|-------------------------------------|---------|
| TypeScript                             | Primary programming language used   | 4.2+    |
| Lerna                                  | Monorepo management tool            | 4.0.0+  |
| [NodeJS](https://nodejs.org/en/)       | JavaScript Runtime                  | 14.0.0+ |
| [Terraform](https://www.terraform.io/) | Infrastructure resource provisioner | 1.0.0+  |
| [Docker](https://www.docker.com/)      | Container orchestration tool        | 20.0.0+ |

### Environment Variables

| Name               | Description                                       | Usage                |
|--------------------|---------------------------------------------------|----------------------|
| AZ_CLIENT_ID       | Azure Client Id                                   | Infrastructure / CI  |
| AZ_CLIENT_SECRET   | Azure Client Secret                               | Infrastructure / CI  |
| AZ_SUBSCRIPTION_ID | The Id of the Subscription running Terraform over | Infrastructure / CI  |
| AZ_TENANT_ID       | The tenant / directory id in Azure                | Infrastructure / CI  |
| INFRACOST_API_KEY  | API Key from Infracosts                           | Infrastructure / CI  |