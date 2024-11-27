variable "persistence" {
  type = object({
    mounts = optional(list(object({
      name         = string
      path         = string
      read_only    = optional(bool, false)
      sub_path     = optional(string, "")
    })), [])

    host_paths = optional(list(object({
      name         = string
      host_path    = string
    })), [])
  })

  default = {}
}
