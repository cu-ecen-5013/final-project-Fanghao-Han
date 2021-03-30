##############################################################
#
# LDD
#
##############################################################

# reference your assignment 7 git contents
LDD_VERSION =063a963b2982fa33a75110bdb2e936f2283522e8# 211ca3c58702a904ea2b938f2e13053f895fc343
LDD_SITE = git@github.com:cu-ecen-5013/assignment-7-Fanghao-Han.git
LDD_SITE_METHOD = git

LDD_MODULE_SUBDIRS = misc-modules/
LDD_MODULE_SUBDIRS += scull/

define LDD_INSTALL_TARGET_CMDS
	#$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin/
	#$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin/
	#$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin/
	#$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin/
endef

$(eval $(kernel-module))
$(eval $(generic-package))