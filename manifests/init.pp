# init.pp

class timezone (
  $timezone     = $timezone::params::timezone,
  $config_file  = $timezone::params::config_file,
  $zoneinfo_dir = $timezone::params::zoneinfo_dir
) inherits timezone::params {

  package {
    $package_list: ensure => installed;
  }

  file { $config_file:
    ensure  => 'link',
    target  => "${zoneinfo_dir}${timezone}"
  }
  file { '/etc/timezone':
    content => "${timezone}\n",
  }
}
