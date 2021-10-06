#
class apache::params {
  case $facts['os']['family'] {
    'RedHat': {
      $package  = 'httpd'
      $config   = '/etc/httpd/conf/httpd.conf'
      $service  = 'httpd'
    }
    'Debian': {
      $package  = 'apache2'
      $config   = '/etc/apache2/apache2.conf'
      $service  = 'apache2'
    }
    'windows': {
      $package  = 'apache-httpd'
      $config   = 'C:/Users/Administrator/AppData/Roaming/Apache24/conf/httpd.conf'
      Package { provider => chocolatey, }
    }
    default: {
      notice('OS not supported')
    }
  }
}
