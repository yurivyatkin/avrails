# -*- mode: ruby -*-
# vi: set ft=ruby :

# Check to determine whether we're on a windows or linux/os-x host,
# later on we use this to launch ansible in the supported way
# source: https://stackoverflow.com/questions/2108727/which-in-ruby-checking-if-program-exists-in-path-from-ruby
def which(cmd)
    exts = ENV['PATHEXT'] ? ENV['PATHEXT'].split(';') : ['']
    ENV['PATH'].split(File::PATH_SEPARATOR).each do |path|
        exts.each { |ext|
            exe = File.join(path, "#{cmd}#{ext}")
            return exe if File.executable? exe
        }
    end
    return nil
end

Vagrant.configure("2") do |config|

  config.vm.define :app do |app_config|
      app_config.vm.box = "ubuntu/trusty64"
      app_config.vm.hostname = "app"
      app_config.vm.network :private_network, ip: "10.0.15.11"
      app_config.vm.network "forwarded_port", guest: 3000, host: 3000
      app_config.vm.provider "virtualbox" do |vb|
        vb.memory = "4096"
        vb.cpus = 4
      end
  end

  # If ansible is in your path it will provision from your HOST machine
  # If ansible is not found in the path it will be instaled in the VM and provisioned from there
  if which('ansible-playbook')
      config.vm.provision "ansible" do |ansible|
          ansible.playbook = "ansible/app.yml"
          ansible.inventory_path = "ansible/inventory.ini"
          ansible.limit = 'all'
      end
  else
      config.vm.provision :shell, path: "ansible/windows.sh", args: ["app"]
  end

end
