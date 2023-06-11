variable "filename" {
  type        = string
  description = "Nazwa pliku"
  default     = "file.txt"

  validation {
    condition     = length(var.filename) > 8
    error_message = "Nazwa pliku musi mieć więcej niż 8 znaków!"
  }

  validation {
    condition     = endswith(var.filename, ".txt")
    error_message = "Nazwa pliku musi kończyć się na .txt!"
  }
}