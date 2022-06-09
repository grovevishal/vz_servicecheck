# Class: name
#
#
class vz_demo (
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
