# params.pp

class timezone::params {

  case $osfamily {
    /(RedHat|Debian)/: {
      $timezone = 'US/Eastern'
      $package_list = ['tzdata']
      $zoneinfo_dir = '/usr/share/zoneinfo/'
      $config_file = '/etc/localtime'
    }
    default: {
      fail("Unsupported osfamily: ${::osfamily} operatingsystem: ${::operatingsystem}, module ${module_name} only supports osfamily: RedHat and Debian")   
    }
  }
}
