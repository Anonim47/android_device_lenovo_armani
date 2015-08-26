LOCAL_PATH := $(call my-dir)

ifneq ($(filter msm7x27a,$(TARGET_BOARD_PLATFORM)),)
  include $(call all-makefiles-under,$(LOCAL_PATH))

#Copying ETC files of 7x27a
    $(shell [ -f $(TARGET_OUT)/etc/ ] || mkdir -p $(TARGET_OUT)/etc/)
    $(shell cp $(LOCAL_PATH)/etc/* $(TARGET_OUT)/etc/)

#Copying scripts files of PAC-Man Files
    $(shell [ -f $(TARGET_OUT)/etc/init.d ] || mkdir -p $(TARGET_OUT)/etc/init.d)
    $(shell cp $(LOCAL_PATH)/scripts/* $(TARGET_OUT)/etc/init.d/)

#Copying other files
    $(shell [ -f $(TARGET_OUT)/bin ] || mkdir -p $(TARGET_OUT)/bin)
    $(shell cp $(LOCAL_PATH)/other/bin/* $(TARGET_OUT)/bin/)
    $(shell [ -f $(TARGET_OUT)/lib ] || mkdir -p $(TARGET_OUT)/lib)
    $(shell cp -r $(LOCAL_PATH)/other/lib/* $(TARGET_OUT)/lib/)
    $(shell [ -f $(PRODUCT_OUT)/root ] || mkdir -p $(PRODUCT_OUT)/root)
    $(shell cp -r $(LOCAL_PATH)/other/root/* $(PRODUCT_OUT)/root/)

endif
