# audio
include frameworks/base/data/sounds/AllAudio.mk

# common
$(call inherit-product, vendor/liquid/config/common.mk)

# Bring in Evervolv a2sd and init.d scripts
include vendor/liquid/products/tools.mk

# Libs for gesture typing
include vendor/liquid/products/keyboard.mk

# packages
PRODUCT_PACKAGES += \
  Mms \
  Stk

# ringtones
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Callisto.ogg \
    ro.config.notification_sound=Tethys.ogg \
    ro.config.alarm_alert=Helium.ogg

# media
PRODUCT_BOOTANIMATION := vendor/liquid/prebuilt/common/bootanimation/480.zip:system/media/bootanimation.zip

$(call inherit-product, vendor/liquid/config/telephony.mk)
