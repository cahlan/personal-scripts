useradd -m -s /bin/bash -U cahlan
addgroup admin
adduser cahlan admin
mkdir /home/cahlan/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDB4bFsMgYumkrAXMsQ6i5Zv5TEoPKsBFqPkKgre1ZN4mRlPK/hcjsnr4k4bW8Oxcy5g1vFgs8JLW2r/leUvzo3PAmuKx1b2CojJxX7yCl8JILuP18b4WbejXKFuVoKHRLQl9+X5w34zwgRAGpN5Ma105ZmPb9RlqM14uaQLDFvctlPnRrzUyGWII3pEaFN6CAtSnSh1VaXBGvr3K/9cH1dHcbcmADnu+TVkoe+SV5KH8QO8YCxVfV8bSGXTI62h3FUTccfuqPn77eQf5e48r5PP+TriBhQRweLGxWD85pwvjoxVsCTknDY79BQscBF1VYExnAkp2PXyvR3+IgvaVkqUW+SFdpQCZ/up3MCQFleOxJLrwi4DFrVmYpZnblmhOyc/ZJ1oYpui+kr0ikln9JxXuduOAeuUGlaWTDmsS4JLQdGpaHSftfQWJrtr++6CwrgCzGnFs6xyy054o07BX6+AmiHqihyCzLboD+4Vg8f7UaYo4K6BcVyRI2rtaVgeq0= cahlan@gmail.com" >> /home/cahlan/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDZUnGM858qzpHDJd2KS1LFFnZFU13KwgenhSwn+ntprQn6J4meo8CuPRym2TeGDwspAdoBQfJRdgAaIATLdtyeNqt1hMMdtzhslOljDugJNGJOukYUBlPu/bkA9BwVRnTuejfvtYPiRTrT6BjOXyP4DPS8cpvtbS/ARthHqKuZKcfvYlNk8iJCxd41IigF58GO3JR5HEMwptX/CHCgG8qzsQ1UP8AEUUBJQgynr6Th0hXvEcx9CtIk6G1yNk3zFX3WN3M8aKNZP6zTQ5uR1ZGd87rzLiG7wzrbSG4f5GKEe+XQSmqAXft8QwDzKgYuaF77QbXCDii1svVZ20Tng2IFT6gJKVBbrTupQISrrrT2290dB6xaZTWtoLPUk/h8zg3l3r0BoKBFgRd5mVVwuBBZ7SevcrrV19TrqMneD39Odi57M7KijOPu2fvQjm6oQ9v2kfB29d6B4/05B/2e++FxySr3UjKPxasiJS/rgiBBxxQe3H6etY4fuDCdGizXnxk= cahlanCahlans-MacBook-Pro.local" >> /home/cahlan/.ssh/authorized_keys
chgrp -R cahlan /home/cahlan/.ssh
chown -R cahlan /home/cahlan/.ssh
chmod -R 600 /home/cahlan/.ssh/
chmod 700 /home/cahlan/.ssh
echo "cahlan ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/cahlan
su cahlan
sudo apt-get update
sudo apt-get install git -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install node
echo "all done!"
