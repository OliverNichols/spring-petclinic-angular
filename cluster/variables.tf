# location variable 
variable "location" {
  description = "Region where the cluster is located"
  default = "UK South"
}

// project name 
variable "project_name" {
    default = "pet-clinic"
}

// VM Size 
variable "vm_size" {
    default = "Standard_B1ms"
  
}


variable "serviceprinciple_id" {
  
}

variable "serviceprinciple_key" {
  
}

variable "kubernetes_version" {
    default = "1.16.10"
}

variable "ssh_key" {
  
}