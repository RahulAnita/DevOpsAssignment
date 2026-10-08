Assume:



ECR Repository = my-app-repo

ECS Cluster = prod-cluster

ECS Service = prod-service

S3 Bucket = build-artifacts



I deliberately excluded:



\- ecr:DeleteRepository

\- ecr:DeleteImage

\- ecs:DeleteService

\- ecs:CreateCluster

\- ecs:\* wildcard permissions

\- s3:PutObject

\- s3:DeleteObject

\- AdministratorAccess



The CI pipeline only requires the ability to push images, update ECS deployments, and read build artifacts. Additional permissions increase risk and violate least-privilege principles.

