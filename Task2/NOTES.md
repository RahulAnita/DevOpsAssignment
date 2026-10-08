Without a remote backend Terraform stores state locally.

If two engineers run terraform apply simultaneously:

1. Both read the same state file.
2. Both calculate changes independently.
3. Whoever writes last can overwrite state information.
4. Infrastructure drift and state corruption may occur.

With S3 backend:
- State is centralized.
- Everyone reads the same state file.

With DynamoDB locking:
- Terraform acquires a lock before planning/applying.
- Other users are blocked until lock release.
- Prevents concurrent modifications and state corruption.