I applied prevent_destroy to app4 because it is a production instance using io2 storage.
Accidental deletion of production systems can cause downtime and data loss.
The lifecycle block ensures Terraform refuses to destroy this resource unless intentionally modified.
