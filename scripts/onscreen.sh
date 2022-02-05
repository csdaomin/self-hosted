# turn my laptop screen on
sudo mount -o remount,exec /dev
sudo vbetool dpms on
sudo mount -o remount,noexec /dev
