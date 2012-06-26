class dotdeb::install {

  file { '/etc/apt/sources.list.d':
      ensure  => 'directory',
      owner   => 'root',
      group   => 'root';
  }

  file { '/etc/apt/sources.list.d/dotdeb.list':
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => template('dotdeb/dotdeb.list.erb');
  }

  exec { 'dotdeb-apt-key':
    path    => '/bin:/usr/bin',
    cwd     => '/tmp',
    command => "wget ${dotdeb::key} -O dotdeb.gpg &&
                cat dotdeb.gpg | apt-key add -",
    unless  => 'apt-key list | grep dotdeb',
    require => File['/etc/apt/sources.list.d/dotdeb.list'],
    notify  => Exec['update-apt'];
  }

  exec { 'update-apt':
    path        => '/bin:/usr/bin',
    command     => 'apt-get update',
    require     => Exec['dotdeb-apt-key'],
    refreshonly => true;
  }
}