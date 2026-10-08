Issue 1 - Incorrect Trust Policy



Broken:



identifiers = \["arn:aws:iam::000000000000:user/roleB"]



Fixed:



identifiers = \["arn:aws:iam::000000000000:role/roleB"]



why it fails:



roleB is an IAM role, not an IAM user.



The trust policy references user/roleB, which does not exist. AWS therefore cannot match the principal attempting to assume the role and the AssumeRole request is denied.



\################################33



Issue 2 - Excessive S3 Permissions



Broken:



Action   = "s3:\*"

Resource = "\*"



Fixed:



policy = jsonencode({

&#x20; Version = "2012-10-17"

&#x20; Statement = \[{

&#x20;   Effect = "Allow"

&#x20;   Action = \[

&#x20;     "s3:GetObject",

&#x20;     "s3:PutObject",

&#x20;     "s3:DeleteObject",

&#x20;     "s3:ListBucket"

&#x20;   ]

&#x20;   Resource = \[

&#x20;     "arn:aws:s3:::company-data-bucket",

&#x20;     "arn:aws:s3:::company-data-bucket/\*"

&#x20;   ]

&#x20; }]

})





Why it is wrong:



The requirement states roleC must have access to only one specific S3 bucket.



Using s3:\* on Resource=\* grants access to every S3 bucket in the account and violates least privilege. Permissions should be restricted to the required bucket and objects only.

