output "vcl_recv" {
  value = templatefile("${path.module}/template.vcl", 
    {
      vcl_recv_condition = var.vcl_recv_condition
      backend_name       = var.backend_name
    }
  )
}

output "vcl_backend" {
  value = module.vcl_backend.vcl_backend
}

