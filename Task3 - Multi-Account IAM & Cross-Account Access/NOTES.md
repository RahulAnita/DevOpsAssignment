Would you actually give engine and ci access keys?





No.



In production I would prefer IAM Roles, AWS SSO (IAM Identity Center), OIDC federation for CI/CD systems, or temporary STS credentials.



Long-lived access keys create security risks because they can be leaked, forgotten, or misused. Temporary credentials are more secure and easier to rotate.





\########



Why trust roleB instead of Account A root?



Trusting Account A root allows any principal in Account A that has permission to assume the role.



Trusting only roleB follows the principle of least privilege by allowing exactly one role to access roleC. This reduces the attack surface and prevents unintended users or roles from using cross-account access.

