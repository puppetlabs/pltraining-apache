class apache::params {
  case $operatingsystem {
    'redhat': {
      $package = 'httpd'
      $config  = '/etc/httpd/conf/httpd.conf'
      $service = 'httpd'
    }
    'debian': {
      $package = 'apache2'
      $config  = '/etc/apache2/apache2.conf'
      $service = 'apache2'
    }
    'windows': {
      $package = 'apache-httpd'
      $config = 'C:/Users/Administrator/AppData/Roaming/Apache24/conf/httpd.conf'
      $service = 'apache'
    }
  }
}

