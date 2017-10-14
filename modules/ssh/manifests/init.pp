class ssh inherits ssh::params{
#  include ssh::params
  package { 'openssh-package':
     name   => 'openssh',
     ensure => present,
     before => File['/etc/ssh/sshd_config'], 

 }

  file { '/etc/ssh/sshd_config':
      ensure => present,
      owner  => 'root',
      group  => 'root',
#      require => Package['openssh-package'],
      source => 'puppet:///modules/ssh/sshd_config', 
     notify  => Service['ssh-service'],  
   }

  service { 'ssh-service':
    name   => $ssh_name,
    ensure => running,
    enable => true,
   # subscribe => File['/etc/ssh/sshd_config'],
  }
}
