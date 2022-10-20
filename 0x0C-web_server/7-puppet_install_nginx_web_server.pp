# installs nginx and configure

package { 'nginx':
  ensure => latest
}

file { '/var/www/html/index.html':
  ensure  => present,
  content => 'Hello World!'
}

exec { 'edit config file':
  provider => shell,
  command  => 'sudo sed -i "s/server_name _;/server_name _;\n\trewrite ^\/redirect_me https:\/\/alxafrica.com permanent;/" /etc/nginx/sites-available/default ; sudo service nginx restart'
}
