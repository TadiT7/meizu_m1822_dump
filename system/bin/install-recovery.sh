#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:a99f7d318b5e5f8d17ac4cd0a636adcd35212022; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:67108864:6eca517f559bb6ba276970bc1fd18f1f3683432c EMMC:/dev/block/bootdevice/by-name/recovery a99f7d318b5e5f8d17ac4cd0a636adcd35212022 67108864 6eca517f559bb6ba276970bc1fd18f1f3683432c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
