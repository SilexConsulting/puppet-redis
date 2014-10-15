# == Class: redis
#
class redis (
) inherits redis::params {
  class {'redis::install': } ->
  class {'redis::config': } ~>
  class {'redis::service': } ->
  Class['redis']
}
