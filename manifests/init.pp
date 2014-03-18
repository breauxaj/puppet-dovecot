class dovecot (
  $ensure = 'latest'
){
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'dovecot',
  }

  package { $required: ensure => $ensure }

}
