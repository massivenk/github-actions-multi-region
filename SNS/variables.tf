variable "region" {
  default = af-south-1
}
variable "backupregion" {
  default = eu-west-1
}
variable "aws_regions" {
  type    = list(string)
  default = ["af-south-1", "eu-west-1", "eu-central-1"]
}
variable "aws_sns_topic_name" {
  type    = string
  default = "massive_topic_labs_sns"
}
