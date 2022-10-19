$str = "${file('/etc/ssh/ssh_config')}\tPasswordAuthentication no\n\tIdentityFile ~/.ssh/school\n"

file { '/etc/ssh/ssh_config':
  ensure  => present,
  content => $str
}
