#
class lamp::web::install {
  class { '::apache':
    mpm_module       => 'prefork',
    default_vhost    => false,
    server_signature => 'Off',
    server_tokens    => 'Prod',
  }

}
