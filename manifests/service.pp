# == Class redis::service

class redis::service (
  $service_name = $redis::params::service_name,
) inherits redis::params {
  service { $service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require    => Package['redis-server'],
  }
}
