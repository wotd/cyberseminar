#
class lamp::db::install (
  $root_password = $lamp::params::root_password
) inherits lamp::params {

  class { '::mysql::server':
    root_password         => $root_password,
    override_options      => { 'mysqld' => { 'max_connections' => '1024' } }
  }
}
