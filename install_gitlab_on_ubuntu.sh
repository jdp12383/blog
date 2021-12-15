$ sudo su -
# apt-get update && apt-get upgrade -y
# apt-get install -y curl openssh-server ca-certificates
# curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash
# EXTERNAL_URL=http://localhost:88/ apt-get install gitlab-ce
# gitlab-ctl status

$ sudo -e /etc/gitlab/gitlab.rb
// find external_url and change the port 80 -> 88
$ sudo gitlab-ctl reconfigure
$ sudo gitlab-ctl start/stop/restart

// change root user password
$ sudo gitlab-rails console
irb(main):001:0> user = User.find_by_username 'root'
=> #<User id:1 @root>
irb(main):002:0> user.password = 'password'
=> "password"
irb(main):003:0> user.password_confirmation = 'password'
=> "password"
irb(main):004:0> user.save!
=> true
irb(main):005:0> exit

