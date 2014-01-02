class dovecot {
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'dovecot',
  }

  package { $required: ensure => latest }

}
