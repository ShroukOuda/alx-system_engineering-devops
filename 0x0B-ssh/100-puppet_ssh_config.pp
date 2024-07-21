# Ensure the .ssh directory exists
file { '/home/ubuntu/.ssh':
  ensure  => directory,
  owner   => 'ubuntu',
  group   => 'ubuntu',
  mode    => '0700',
}

# Manage the SSH config file
file { '/home/ubuntu/.ssh/config':
  ensure  => file,
  owner   => 'ubuntu',
  group   => 'ubuntu',
  mode    => '0600',
  content => @("EOF")
Host myserver
    HostName 419043-web-01
    User ubuntu
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
EOF
}
