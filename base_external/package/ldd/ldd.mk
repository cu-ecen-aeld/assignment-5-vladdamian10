
##############################################################
#
# LDD (AESD-ASSIGNMENT 7 Part 2)
#
##############################################################

# Points to the commit hash which merged ldd repo to aeld-assignment-7.
LDD_VERSION = 'e49a56ff7f7577eacb93acb657fa01561998a9ba'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = 'git@github.com:vladdamian10/aeld-assignment-7.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_MODULE_SUBDIRS = misc-modules scull

define LDD_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/sbin/module_load
    $(INSTALL) -D -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/sbin/module_unload
endef

$(eval $(kernel-module))
$(eval $(generic-package))
