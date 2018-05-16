class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCuy24ErtkIWi498CAU9jrqiMH6eJg3UfcXqtyuJDkLEsvNcPse1fvpXCV3MU+jMDp2gT+djqgoeU+qvrIMF00bze4wcYIMFthSDTg8XnAmViqK3flzfBneauF7CO2X5TfkgEiqMTidxBBF/Kip48pISwLTeQgzH/51GKwtovftGq7a4ulCX8fwGBKDv8lhKTbReAi/gT/5H/9ziH8K/2qGLeIDuznoh0b17xngLeT7owdoTsYY3R3F/gZENs+IUXLVD7xI15cc8QEMj648f/p2dq/spJKJd+HVptz6ZH+ExREM1J4a5Ly+inxTdLI58BYELA54IXoRqiT2Pa3PVUo9',
	}  
}
