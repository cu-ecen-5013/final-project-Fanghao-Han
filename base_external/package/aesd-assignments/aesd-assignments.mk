
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
#'COMMIT VERSION NUMBER' 
AESD_ASSIGNMENTS_VERSION = 52d86242ec0bf07fab7d8186d6c42d93d561e4eb
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
#'GITHUB REPOSITORY LINK'
AESD_ASSIGNMENTS_SITE =git@github.com:cu-ecen-5013/assignment-3-Fanghao-Han.git
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

# TODO add your writer, finder and tester utilities/scripts to the installation steps below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	#$(INSTALL) -d 0755 $(@D)/conf/ $(TARGET_DIR)/bin/conf/
	#$(INSTALL) -m 0755 $(@D)/conf/* $(TARGET_DIR)/bin/conf/
	#$(INSTALL) -m 0755 $(@D)/writer $(TARGET_DIR)/root/
#
	#$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/* $(TARGET_DIR)/bin
#
	#$(INSTALL) -d 0755 $(@D)/server/ $(TARGET_DIR)/bin/server
	#$(INSTALL) -m 0755 $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin
	#
	#ln -s  $(TARGET_DIR)/usr/bin/simpleserver $(TARGET_DIR)/etc/init.d/S99simpleserver
	#$(INSTALL) -m 0755 $(@D)/server/Smydaemon  $(TARGET_DIR)/etc/init.d/S99simpleserver
#
	#$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesd_load_qemu $(TARGET_DIR)/usr/bin/
	#$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesd_unload_qemu $(TARGET_DIR)/usr/bin/
endef

$(eval $(generic-package))
