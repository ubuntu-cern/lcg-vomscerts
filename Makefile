prefix=/etc/grid-security

.PHONY: configure install clean

all: configure

install: 
	@echo installing ...
	@mkdir -p ${prefix}/vomsdir
	@install -m 0644 vomsdir/cclcgvomsli01.in2p3.fr.3292 ${prefix}/vomsdir
	@install -m 0644 vomsdir/lcg-voms.cern.ch.2008-04-07 ${prefix}/vomsdir
	@install -m 0644 vomsdir/vo.racf.bnl.gov.21772 ${prefix}/vomsdir
	@install -m 0644 vomsdir/voms-pilot.cern.ch.2008-09-05 ${prefix}/vomsdir
	@install -m 0644 vomsdir/voms.cern.ch.2007-10-15 ${prefix}/vomsdir
	@install -m 0644 vomsdir/voms.cern.ch.2008-09-04 ${prefix}/vomsdir

clean::
	rm -f *~ 
