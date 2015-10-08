#!/sbin/sh

set -e

modelid=`getprop ro.boot.mid`

case $modelid in
	HTC__032)			variant="chl" ;;
	0P9C50000|0P9C51000|0P9C70000)	variant="dualsim" ;;
	*)				variant="gsm" ;;
esac

if [ $variant == "dualsim" ]; then
	NFCFILES="app/NfcNci lib/libnfc-nci.so lib/libnfc_nci_jni.so lib/libnfc_ndef.so lib/hw/nfc_nci.pn54x.default.so etc/libnfc-nxp.conf permissions/com.cyanogenmod.nfc.enhanced.xml etc/permissions/com.android.nfc_extras.xml etc/permissions/android.hardware.nfc.xml etc/libnfc-brcm.conf etc/nfcee_access.xml framework/com.android.nfc_extras.jar priv-app/Tag vendor/firmware/libpn547_fw.so"

	for i in $NFCFILES; do
		rm -rf /system/$i
	done
	variant="gsm"
fi

basedir="/system/blobs/$variant/"
cd $basedir
chmod 755 bin/*
find . -type f | while read file; do ln -s $basedir$file /system/$file ; done
