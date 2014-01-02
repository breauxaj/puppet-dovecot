define dovecot::service (
  $ensure,
  $enable
) {
  $service = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'dovecot',
  }

  service { $service:
    ensure => $ensure,
    enable => $enable,
  }

}
