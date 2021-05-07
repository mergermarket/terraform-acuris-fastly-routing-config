if (req.backend == F_default_backend && (${vcl_recv_condition})) {
    set req.backend = ${backend_name};
}