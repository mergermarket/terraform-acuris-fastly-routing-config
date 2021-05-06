module "vcl_backend" {
  source = "mergermarket/fastly-routing-config-vcl-backend/acuris"

  backend_name          = var.backend_name
  connect_timeout       = var.connect_timeout
  dynamic               = var.dynamic
  first_byte_timeout    = var.first_byte_timeout
  between_bytes_timeout = var.between_bytes_timeout
  max_connections       = var.max_connections
  backend_port          = var.backend_port
  backend_host          = var.backend_host
  ssl_cert_hostname     = var.ssl_cert_hostname
  ssl_sni_hostname      = var.ssl_sni_hostname
  ssl_ca_cert           = var.ssl_ca_cert
  ssl_check_cert        = var.ssl_check_cert
  probe_enabled         = var.probe_enabled
  probe_threshold       = var.probe_threshold
  probe_window          = var.probe_window
  probe_initial         = var.probe_initial
  probe_interval        = var.probe_interval
  probe_timeout         = var.probe_timeout
  healthcheck_path      = var.healthcheck_path
}

