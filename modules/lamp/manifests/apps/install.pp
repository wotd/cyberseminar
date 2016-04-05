#
class lamp::apps::install (
  $packages = $lamp::params::packages
) inherits lamp::params {
  package { $packages:
    ensure => 'present',
  }
}
