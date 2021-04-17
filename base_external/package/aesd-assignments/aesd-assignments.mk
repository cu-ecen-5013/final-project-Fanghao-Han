
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
#'COMMIT VERSION NUMBER' 
AESD_ASSIGNMENTS_VERSION = 5547c53219acbf0c9be216db64cef9aea5b00fe7#08d2f2429847b77f4b0705140f0a92d50525d577
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
#'GITHUB REPOSITORY LINK'
AESD_ASSIGNMENTS_SITE =git@github.com:Fanghao-Han/ecen-5013-final-project-application.git
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

# TODO add your writer, finder and tester utilities/scripts to the installation steps below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/client $(TARGET_DIR)/usr/bin/
endef

$(eval $(generic-package))
