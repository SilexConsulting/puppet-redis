# == Class redis::params

class redis::params {
  $service_name   = 'redis-server'
  $package_name   = 'redis-server'

  case $::osfamily {
    'Debian': {
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
