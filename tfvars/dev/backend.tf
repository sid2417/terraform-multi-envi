bucket = "dev-multi-envi"
key    = "dev-key-multi-envi"  
region = "us-east-1"
dynamodb_table = "dev-table-multi-envi"  

# Here you mention any name, this key is nth but terraform.tfstate in normal state, but now we are creating remote-state # For every project you please mention different key, combining the both project is not good

# This dynamodb_table is for locking mechanism to our s3 bucket,(Partition key: LockID), you create any table but Partition key is same


# dev-multi-envi
# dev-table-multi-envi
