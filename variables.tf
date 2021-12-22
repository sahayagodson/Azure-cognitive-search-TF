variable "resource_group" {
  type = string
  description = "The name of the resource group in which to create search service"
  
}

variable "location" {
  type = string
  description = "The location/region where the search service is created. Changing this forces a new resource to be created."
  
}

variable "search_name" {
  type = string
  description = "Service name must only contain lowercase letters, digits or dashes, cannot use dash as the first two or last one characters, cannot contain consecutive dashes, and is limited between 2 and 60 characters in length."
  
}

variable "sku" {
  type = string
  description = "Valid values are 'free', 'standard', 'standard2', and 'standard3' (2 & 3 must be enabled on the backend by Microsoft support). 'free' provisions the service in shared clusters. 'standard' provisions the service in dedicated clusters."
  
}

variable "replica_count" {
  type = string
  description = "Replicas distribute search workloads across the service. You need 2 or more to support high availability (applies to Basic and Standard only)."
  
}

variable "partition_count" {
  description = "Partitions allow for scaling of document count as well as faster indexing by sharding your index over multiple Azure Search units. Allowed values: 1, 2, 3, 4, 6, 12"
  type = string
}

variable "hosting_mode" {
  description = "Applicable only for SKU set to standard3. You can set this property to enable a single, high density partition that allows up to 1000 indexes, which is much higher than the maximum indexes allowed for any other SKU. Allowed values: default, highDensity"
  default     = "default"
}

variable "tags" {
  description = "A mapping of tages to assign to the resource. Changing this forces a new resource to be created."
  default     = {}
}
