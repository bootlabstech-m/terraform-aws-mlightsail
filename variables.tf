variable "region" {
  type        = string
  description = "Set up our region, that we want to use"
}
variable "name" {
  description = "Project's Names"
  type        = string
}
variable "bundle_id" {
  type        = string
  description = "Options for instance size"
}
variable "lightsail_blueprints" {
  type        = map(string)
  description = "The ID for a virtual private server image. A list of available blueprint AWS CLI command: aws lightsail get-blueprints"
}
variable "zone" {
    type=string
    description = "the zone"
  
}
variable "role_arn" {
  description = "Role ARN"
  type        = string
}