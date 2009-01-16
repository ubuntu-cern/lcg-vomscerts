prefix=/etc/grid-security

.PHONY: configure install clean

all: configure

install: 
	@echo installing ...
	@mkdir -p ${prefix}/vomsdir
	@install -m 0644 vomsdir/cclcgvomsli01.in2p3.fr.3292.pem ${prefix}/vomsdir
	@install -m 0644 vomsdir/cclcgvomsli01.in2p3.fr.4786.pem ${prefix}/vomsdir
	@install -m 0644 vomsdir/lcg-voms.cern.ch.2008-04-07.pem ${prefix}/vomsdir
	@install -m 0644 vomsdir/vo.racf.bnl.gov.21772.pem ${prefix}/vomsdir
	@install -m 0644 vomsdir/vo.racf.bnl.gov.30105.pem ${prefix}/vomsdir
	@install -m 0644 vomsdir/voms-pilot.cern.ch.2008-09-05.pem ${prefix}/vomsdir
	@install -m 0644 vomsdir/voms.cern.ch.2008-09-04.pem ${prefix}/vomsdir
	@install -m 0644 vomsdir/voms.fnal.gov.26705.pem ${prefix}/vomsdir

clean::
	rm -f *~ 
