output "rg_name" {
  value = module.dev_network.rg_name
}

output "location" {
  value = module.dev_network.location
}

output "vm_name" {
  value = module.vm.vm_name
}

output "public_ip_1" {
  value = module.vm.vm_public_ip
}