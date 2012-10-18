PRODUCT_MAKEFILES := $(LOCAL_DIR)/full_umts_spyder.mk
ifeq ($(TARGET_PRODUCT),aokp_umts_spyder)
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/aokp.mk
endif
ifeq ($(TARGET_PRODUCT),cna_umts_spyder)
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cna.mk
endif
