user { 'joerg':
	password	=> 'CA.4mNUqsu796',
	managehome	=> true,
	shell		=> '/bin/bash',
	ensure		=> present
}

package { 'ubuntu-desktop':
	provider			=> 'apt'
	install_options		=> '--no-install-recommends',
	ensure		=> present
}

package { 'xubuntu-desktop': ensure => absent }

package { 'firefox': }

package { 'eclipse': }
package { 'tomcat7': }