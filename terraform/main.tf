/*
PROMPT:
Provide terraform hcl code to create an aws provider and an aws dynamodb table. 
The region of the provider block must be set to "eu-west-3".
The dynamodb table block should be named 'my_table'
  and must contain a single column (attribute) named "Attribute_1" of type string ("S"), 
  this attribute is also the hash key. 
Also set 'read_capacity' and 'write_capacity' to 1.
*/

####


provider "aws" {
  region = "eu-west-3"
}

resource "aws_dynamodb_table" "my_table" {
  name = "my_table"
  attribute {
    name = "Attribute_1"
    type = "S"
  }
  read_capacity = 1
  write_capacity = 1
}
