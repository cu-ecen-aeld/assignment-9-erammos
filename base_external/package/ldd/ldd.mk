
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LDD_VERSION = 1.2.3
LDD_VERSION = 6e8f5a529a2ec2aef58ac65bc4242c20313322e3
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-erammos.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_LICENSE = GPL-2.0
LDD_LICENSE_FILES = COPYING
LDD_MODULE_SUBDIRS += misc-modules
LDD_MODULE_SUBDIRS += scull
$(eval $(kernel-module))
$(eval $(generic-package))

#define LDD_BUILD_CMDS
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/misc-progs
#endef

#define LDD_INSTALL_TARGET_CMDS
#	$(INSTALL) -m 0755 $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin
#	$(INSTALL) -m 0755 $(@D)/server/aesdsocket-start-stop.sh  $(TARGET_DIR)/etc/init.d/S99aesdsocket
#	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment5/* $(TARGET_DIR)/bin
#endef

#$(eval $(generic-package))
