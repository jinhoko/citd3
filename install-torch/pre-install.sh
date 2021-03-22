# APT
apt update && apt upgrade

# make swap area
sudo dd if=/dev/zero of=/swap1 bs=1M count=2048
sudo mkswap /swap1
sudo vim /etc/fstab

echo '/swap1 swap swap' >> /etc/fstab