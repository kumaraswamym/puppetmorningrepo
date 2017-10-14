class demo { 

  file { '/etc/welcome' :
     ensure => present,
    # content => 'this is a welcome file',
     content => template('demo/test.erb'), 
     owner  => root,
     group  => root,
     mode   => '0755'
  }
 
 file { '/etc/test' :
     ensure => directory,
     owner  => root,
     group  => root,
  }
      
 user {'admin':
   ensure   => present,
   shell    => '/bin/bash',
   home     => '/home/admin',
   groups   => ['sudoers','deploy'],
   managehome => true,
   password  => 'admin123',
 }
 
 group { 'sudoers':
   ensure  => present,
  }
  
 group { 'deploy':
   ensure  => present,
  }

}
