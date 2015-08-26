#Root Props
ADDITIONAL_DEFAULT_PROPERTIES += \
    service.adb.root=1 \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.allow.mock.location=0 \
    ro.debuggable=1 \
    persist.sys.usb.config=adb \
    ro.zygote=zygote32 \
    dalvik.vm.dex2oat-Xms=8m \
    dalvik.vm.dex2oat-Xmx=96m \
    dalvik.vm.image-dex2oat-Xms=48m \
    dalvik.vm.image-dex2oat-Xmx=48m

# Qualcomm
PRODUCT_PROPERTY_OVERRIDES += \
   rild.libpath=/system/lib/libril-qc-qmi-1.so \
   ril.subscription.types=NV,RUIM \
   ro.telephony.call_ring.delay=3000 \
   ro.telephony.ril.v3=skippinpukcount,qcomdsds \
   persist.multisim.config=dsds \
   persist.radio.multisim.config=dsds \
   ro.multi.rild=true \
   ro.telephony.default_network=3 \
   ro.telephony.default_cdma_sub=0 \
   ro.cdma.factory=china \
   ro.cdma.subscribe_on_ruim_ready=true \
   telephony.lteOnCdmaDevice=0 \
   ro.telephony.call_ring.multiple=false \
   ro.use_data_netmgrd=true \
   persist.data_netmgrd_nint=16 \
   persist.radio.apm_sim_not_pwdn=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.fmcv2support=1 \
    wlan.driver.ath=1 \
    debug.sf.hw=1 \
    debug.sf.swaprect=1 \
    debug.composition.7x27A.type=dyn \
    debug.composition.7x25A.type=dyn \
    debug.composition.8x25.type=gpu \
    ro.sf.7x27A.lcd_density=240 \
    ro.sf.8x25.lcd_density=240 \
    persist.gralloc.cp.level3=1 \
    media.stagefright.enable-player=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-fma2dp=true \
    media.stagefright.enable-scan=true \

#
#for using emmc partition instead sdcard
#
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.emmcsdcard.enabled=1

#
# system props for SD card emulation of emmc partition
#
PRODUCT_PROPERTY_OVERRIDES += \
   ro.emmc.sdcard.partition=21 \
   ro.ksm.default=1 \
   dalvik.vm.jit.codecachesize=0 \
   persist.sys.dalvik.multithread=false \
   persist.sys.dun.override=0 \
   persist.sys.root_access=1 \
   ro.fm.transmitter=false \
   headset.hook.delay=500 \
   ro.bluetooth.remote.autoconnect=true \
   ro.bluetooth.request.master=true \
   ro.bt.bdaddr_path=/data/misc/bluedroid/bdaddr \
   ro.qualcomm.bluetooth.dun=true \
   ro.qualcomm.bluetooth.ftp=true \
   ro.cwm.enable_key_repeat=true \
   debug.composition.type=dyn \
   debug.hwc.dynThreshold=1.9 \
   ro.bq.gpu_to_cpu_unsupported=1 \
   ro.max.fling_velocity=4000 \
   ro.opengles.version=131072 \
   ro.sf.lcd_density=240 \
   dalvik.vm.heapgrowthlimit=48m \
   dalvik.vm.heapsize=128m \
   persist.sys.usb.config=mass_storage,adb \
   ro.vold.umsdirtyratio=50 \
   persist.webview.provider=classic \
   wifi.interface=wlan0 \
   wifi.supplicant_scan_interval=60 \
   ro.carrier=unknown \
   ro.ril.hsxpa=1 \
   ro.ril.gprsclass=10 \
   ro.adb.qemud=1 \
   dalvik.vm.heapstartsize=5m \
   dalvik.vm.heaptargetutilization=0.25 \
   dalvik.vm.heapminfree=512k \
   dalvik.vm.heapmaxfree=2m \
   persist.sys.dalvik.vm.lib=libdvm.so \
   dalvik.vm.lockprof.threshold=500 \
   dalvik.vm.dexopt-flags=m=y \
   net.bt.name=Android \
   dalvik.vm.stack-trace-file=/data/anr/traces.txt \
   persist.hwc.mdpcomp.enable=false \
   debug.mdpcomp.logs=0 \
   debug.gralloc.map_fb_memory=1 \
   debug.hwc.fakevsync=1 \
   persist.sys.usb.config=mtp,adb

# Common properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.low_ram=true

#Low-Ram
PRODUCT_PROPERTY_OVERRIDES += \
    config.disable_atlas=true \
    persist.sys.force_highendgfx=true \
    ro.config.max_starting_bg=8 \
    ro.sys.fw.bg_apps_limit=16

# Use ART small mode
PRODUCT_PROPERTY_OVERRIDES += \
   dalvik.vm.dex2oat-filter=interpret-only \
   dalvik.vm.image-dex2oat-filter=speed

