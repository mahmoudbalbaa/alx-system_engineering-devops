# install flask -v 2.1.0

class flask {
  package { 'python3-pip':
    ensure => installed,
  }

  exec { 'install-flask':
    command     => '/usr/bin/pip3 install flask==2.1.0',
    require     => Package['python3-pip'],
    path        => ['/bin', '/usr/bin'],
    provider    => shell,
  }
}

include flask
