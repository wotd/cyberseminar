node 'db' {
  #include lamp::apps::install
  include lamp::db
}

node 'ulamp' {
  include lamp
}

node 'clamp' {
  include lamp
}

node 'web' {
  include lamp::apps::install
  include lamp::web

  lamp::web::vhost { 'test': }
  lamp::web::vhost { 'test2': }
  lamp::web::vhost { 'test3': }
  lamp::web::vhost { 'test4': }
}
