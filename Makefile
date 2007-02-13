prefix=/etc/grid-security

.PHONY: configure install clean

all: configure

install: 
	@echo installing ...
	@mkdir -p ${prefix}/vomsdir
	@install -m 0755 vomsdir/cclcgvomsli01.in2p3.fr.764 ${prefix}/vomsdir
	@install -m 0755 vomsdir/lcg-voms.cern.ch.2580 ${prefix}/vomsdir
	@install -m 0755 vomsdir/voms.cern.ch.2006-11-20 ${prefix}/vomsdir
	@install -m 0755 vomsdir/voms-test.cern.ch.2006-11-20 ${prefix}/vomsdir

clean::
	rm -f *~ 
