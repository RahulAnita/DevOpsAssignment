Instance app5 has prevent_destroy enabled.

Reason:
app5 is assumed to host critical shared services. Accidental deletion could cause
significant outage, therefore Terraform lifecycle prevent_destroy is enabled.
