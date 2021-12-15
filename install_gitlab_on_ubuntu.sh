$ sudo su -
# apt-get update && apt-get upgrade -y
# apt-get install -y curl openssh-server ca-certificates
# curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash
# EXTERNAL_URL=http://localhost:88/ apt-get install gitlab-ce
# gitlab-ctl status

$ sudo -e /etc/gitlab/gitlab.rb
// find external_url and change the port 80 -> 88
$ sudo gitlab-ctl reconfigure
