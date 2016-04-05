#
class lamp::web {
  include lamp::web::install
  class { 'lamp::web::config':
    require => Class['lamp::web::install'],
  }


}
