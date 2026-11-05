
##############################################################
#
# LDD (AESD-ASSIGNMENT 7 Part 2)
#
##############################################################

# Points to the commit hash which merged ldd repo to aeld-assignment-7.
AESD_ASSIGNMENTS_VERSION = 'e49a56ff7f7577eacb93acb657fa01561998a9ba'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_ASSIGNMENTS_SITE = 'git@github.com:vladdamian10/aeld-assignment-7.git'
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/misc-modules all
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/scull* all
endef
 
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
        $(INSTALL) -m 0755 $(@D)/misc-modules/* $(TARGET_DIR)/usr/bin
        $(INSTALL) -m 0755 $(@D)/scull*/* $(TARGET_DIR)/usr/bin
	#$(INSTALL) -m 0755 $(@D)/<TODO: add script> $(TARGET_DIR)/etc/init.d/S98lddmodules
endef

$(eval $(generic-package))
