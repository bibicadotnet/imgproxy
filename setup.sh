sudo apt update && sudo apt upgrade -y

locale-gen en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

sudo apt remove iptables-persistent -y
sudo ufw disable
sudo iptables -F

timedatectl set-timezone Asia/Ho_Chi_Minh

curl -sSL https://get.docker.com | sh
sudo usermod -aG docker $(whoami)
sudo systemctl start docker
sudo systemctl enable docker
apt install docker-compose -y

