variable "elb_names" {
  type    = list(any)
  default = ["dev-loadbalancer", "stage-loadbalanacer", "prod-loadbalancer"]
}
