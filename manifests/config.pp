# == Class: redis::config
# Download, install and configure redis
class redis::config (
  $package_name             = $redis::params::package_name,
) inherits redis::params {
  package { $package_name:
    ensure => installed,
  }
}
