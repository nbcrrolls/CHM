# $Id$
#
# @Copyright@
# @Copyright@

REDHAT.ROOT = $(CURDIR)/../../

-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

build::
	
install::
	mkdir -p $(ROOT)/etc/ld.so.conf.d
	install -m 644 chm.conf $(ROOT)/etc/ld.so.conf.d

