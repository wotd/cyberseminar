#
class lamp::params {
  $vhost_ensure  = 'present'
  $root_password = '123'
  $port          = '80'
  $docroot       = '/var/www/'
  $ssl           = false
  $ssl_cert      = '/etc/ssl/apache.crt'
  $ssl_key       = '/etc/ssl/apache.key'
  $phpinfo       = 'absent'
  $packages      = [
                  'tree',
                  'git',
                  'rsync',
                  'screen',
                  'mc'
                  ]
  if $::operatingsystem == 'Ubuntu' {
    $docroot_owner = 'www-data'
    $docroot_group = 'www-data'
    $apache_srv    = 'apache2'

                  }
  if $::operatingsystem == 'Centos' {
    $docroot_owner = 'apache'
    $docroot_group = 'apache'
    $apache_srv    = 'httpd'
  }
}
