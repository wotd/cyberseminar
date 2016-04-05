#
define lamp::web::vhost (
  $vhost_ensure  = $lamp::params::vhost_ensure,
  $port          = $lamp::params::port,
  $docroot       = $lamp::params::docroot,
  $docroot_owner = $lamp::params::docroot_owner,
  $docroot_group = $lamp::params::docroot_group,
  $ssl           = $lamp::params::ssl,
  $ssl_cert      = $lamp::params::ssl_cert,
  $ssl_key       = $lamp::params::ssl_key,
  $vhost_name    = $name,
  $phpinfo       = $lamp::params::phpinfo
) {
  apache::vhost { $vhost_name:
    ensure         => $vhost_ensure,
    port           => $port,
    docroot        => "${docroot}/${vhost_name}",
    docroot_owner  => $docroot_owner,
    docroot_group  => $docroot_group,
    ssl            => $ssl,
    ssl_cert       => $ssl_cert,
    ssl_key        => $ssl_cert,
    require        => Class['lamp::web::install'],
    options        => ['Includes', 'MultiViews', 'FollowSymLinks'],
  }

  file { "${docroot}${vhost_name}/phpinfo.php":
    ensure  => $phpinfo,
    content => "${vhost_name} \n <?php phpinfo(); ?>",
    owner   => $docroot_owner,
    group   => $docroot_group,
    mode    => '0644',
  }

}
