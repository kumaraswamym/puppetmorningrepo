class ssh::params {

  case $osfamily {
    'RedHat':
             {  $ssh_name = 'sshd' }
    'Debian':
            {  $ssh_name = 'ssh' }
    'Ubuntu':
           {  $ssh_name = 'ssh' }
    default:
           { fail('OS not supported by puppet module ssh') }
  }

}
