# Class: name
#
#
class vz_servicecheck (
  String $demo_content
) {
  # resources
  exec {'hello':
    path      => '/bin',
    command   => 'echo hello World!',
    logoutput => true,
  }
  file { '/tmp/puppetdemo.txtt':
    ensure  => file,
    content => $demo_content,
  }
}
