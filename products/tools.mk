LOCAL_PATH:= vendor/liquid/prebuilt/common

# Utilize init.d scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    $(LOCAL_PATH)/etc/init.d/05mountext:system/etc/init.d/05mountext \
    $(LOCAL_PATH)/etc/init.d/20extgapps:system/etc/init.d/20extgapps

# Apps2sd files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bin/a2sd:system/bin/a2sd \
    $(LOCAL_PATH)/bin/fix_permissions:system/bin/fix_permissions \
    $(LOCAL_PATH)/xbin/zipalign:system/xbin/zipalign \
    $(LOCAL_PATH)/etc/init.d/10apps2sd-redux:system/etc/init.d/10apps2sd

# Android Terminal Emulator
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/lib/libjackpal-androidterm5.so:system/lib/libjackpal-androidterm5.so \
    $(LOCAL_PATH)/lib/libjackpal-termexec2.so:system/lib/libjackpal-termexec2.so \
    $(LOCAL_PATH)/etc/jackpal/Term.apk:system/app/Term.apk

# LowSoundFixer (credits tytung)
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/apk/LowSoundFixer.apk:system/app/LowSoundFixer.apk
