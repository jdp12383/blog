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

// install GitLab Runner
Find the latest file name and options at https://gitlab-runner-downloads.s3.amazonaws.com/latest/index.html

$ dpkg-architecture -q DEB_BUILD_ARCH
amd64

# Download the binary for your system
$ sudo curl -L --output /usr/local/bin/gitlab-runner https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-amd64

# Give it permissions to execute
$ sudo chmod +x /usr/local/bin/gitlab-runner

# Create a GitLab CI user
$ sudo useradd --comment 'GitLab Runner' --create-home gitlab-runner --shell /bin/bash

# Install and run as service
$ sudo gitlab-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner
$ sudo gitlab-runner start

$ sudo gitlab-runner register --url http://localhost/ --registration-token $REGISTRATION_TOKEN
