# keep screen of my laptop off (dell inspiron 7460)
sudo mount -o remount,exec /dev
sudo vbetool dpms off
sudo mount -o remount,noexec /dev

