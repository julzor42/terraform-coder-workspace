variable "local" {
  type = list(object({
    name         = string
    path         = string
    host_path    = string
    read_only    = optional(bool, false)
  }))

  default = []
}
