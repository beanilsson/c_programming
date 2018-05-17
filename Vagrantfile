Vagrant.configure("2") do |config|
  config.vm.box = 'ubuntu/xenial64'
  config.vm.hostname = 'devbox'
  ENV['LC_ALL']="en_US.UTF-8"

  config.vm.network :private_network, ip: '192.168.50.50'
  config.vm.synced_folder '.', '/vagrant', nfs: true

  config.vm.network 'forwarded_port',
                      guest: 5000,
                      host: 6000

  config.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/me.pub"

  config.vm.provision :shell,
                      path: 'bootstrap.sh',
                      keep_color: true,
                      privileged: false
end
