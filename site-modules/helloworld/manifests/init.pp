# Simple helloworld module to verify Puppet functionality
class helloworld {
  file { '/var/tmp/helloworld':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => "Hello world from Holos Control Repo\n",
  }
}
