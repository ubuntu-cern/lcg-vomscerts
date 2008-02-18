prefix=/etc/grid-security

.PHONY: configure install clean

all: configure

install: 
	@echo installing ...
	@mkdir -p ${prefix}/vomsdir
	@install -m 0755 vomsdir/cclcgvomsli01.in2p3.fr.1881 ${prefix}/vomsdir
	@install -m 0755 vomsdir/cclcgvomsli01.in2p3.fr.3292 ${prefix}/vomsdir
	@install -m 0755 vomsdir/lcg-voms.cern.ch.2007-05-07 ${prefix}/vomsdir
	@install -m 0755 vomsdir/vo.racf.bnl.gov.15998 ${prefix}/vomsdir
	@install -m 0755 vomsdir/voms-test.cern.ch.2007-10-15 ${prefix}/vomsdir
	@install -m 0755 vomsdir/voms.cern.ch.2007-10-15 ${prefix}/vomsdir

clean::
	rm -f *~ 
