package {'puppetdb-terminus': ensure => installed, }

node 'ulamp' {
  include lamp
  lamp::web::vhost { 'test': }
  lamp::web::vhost { 'test2': }
  lamp::web::vhost { 'test3': }
  lamp::web::vhost { 'test4': }
}

node 'clamp' {
  include lamp
  lamp::web::vhost { 'test':
    phpinfo => 'present', }
  lamp::web::vhost { 'test2': }
  lamp::web::vhost { 'test3': }
  lamp::web::vhost { 'test4': }
}

node 'web' {
  include lamp::apps::install
  include lamp::web
  lamp::web::vhost { 'test': }
  lamp::web::vhost { 'test2': }
  lamp::web::vhost { 'test3': }
  lamp::web::vhost { 'test4': }
}
