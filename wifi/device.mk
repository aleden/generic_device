#wifi items
PRODUCT_PACKAGES := \
		wifi.rc \
		libwpa_client \
		hostapd \
		wpa_supplicant \
		wificond \
		android.hardware.wifi@1.0-service \


PRODUCT_COPY_FILES := \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	device/linaro/generic/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \

PRODUCT_PROPERTY_OVERRIDES := \
		wifi.interface=wlan0 \
		wifi.supplicant_scan_interval=15


subdirs-true :=
subdirs-$(CONFIG_QCOM_FLO_WIFI) += qcom-flo
subdirs-$(CONFIG_TI_WILINK_WIFI) += ti_wilink
$(call inherit-product-dirs, $(subdirs-true))
