# manifest.xml
remove_existing(){
if [ -d $1 ]; then
   echo "Found $1, removing...."
   rm -rf $1
else
   echo "$1 doesn't exist"
fi
}
remove_existing vendor/hardware_overlay
git clone https://github.com/phhusson/vendor_hardware_overlay vendor/hardware_overlay -b pie

remove_existing device/phh/treble
git clone https://github.com/phhusson/device_phh_treble device/phh/treble -b android-12.0
remove_existing vendor/vndk-tests
git clone https://github.com/phhusson/vendor_vndk-tests vendor/vndk-tests -b master
remove_existing vendor/gapps-go
git clone https://github.com/phhusson/gapps-go vendor/gapps-go -b master
remove_existing vendor/interfaces
git clone https://github.com/phhusson/vendor_interfaces -b android-11.0 vendor/interfaces
remove_existing vendor/lptools
git clone https://github.com/phhusson/vendor_lptools vendor/lptools -b master
remove_existing vendor/magisk
git clone https://github.com/phhusson/vendor_magisk vendor/magisk -b android-10.0

# gapps.xml
remove_existing vendor/partner_gms
git clone https://gitlab.com/davi.sh/gms-android-12 vendor/partner_gms

# foss.xml
remove_existing packages/apps/FDroidPrivilegedExtension
git clone https://gitlab.com/fdroid/privileged-extension.git packages/apps/FDroidPrivilegedExtension -b 0.2.7
remove_existing vendor/foss
git clone https://github.com/phhusson/vendor_foss vendor/foss -b master
