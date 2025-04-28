################################################################################
#
# aesd-socket....
#
################################################################################

AESD_SOCKET_VERSION = f981095b6dbd1dae2dd9ce836a24eb796cf08b61
AESD_SOCKET_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-YSR3.git
AESD_SOCKET_SITE_METHOD = git
AESD_SOCKET_GIT_SUBMODULES = YES

define AESD_SOCKET_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server
endef

define AESD_SOCKET_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin/aesdsocket
	$(INSTALL) -D -m 0755 $(@D)/server/aesdsocket-start-stop $(TARGET_DIR)/etc/init.d/S99aesdsocket
endef

$(eval $(generic-package))