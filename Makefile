prefix=/etc/grid-security

.PHONY: configure install clean

all: configure

install: 
	@echo installing ...
	@mkdir -p ${prefix}/vomsdir
	@install -m 0644 vomsdir/cclcgvomsli01.in2p3.fr.1413.pem ${prefix}/vomsdir
	@install -m 0644 vomsdir/cclcgvomsli01.in2p3.fr.4786.pem ${prefix}/vomsdir
	@install -m 0644 vomsdir/lcg-voms.cern.ch.2009-03-03.pem ${prefix}/vomsdir
	@install -m 0644 vomsdir/vo.racf.bnl.gov.30105.pem ${prefix}/vomsdir
	@install -m 0644 vomsdir/vo.racf.bnl.gov.40260.pem ${prefix}/vomsdir
	@install -m 0644 vomsdir/voms-pilot.cern.ch.2009-06-30.pem ${prefix}/vomsdir
	@install -m 0644 vomsdir/voms.cern.ch.2009-06-22.pem ${prefix}/vomsdir
	@install -m 0644 vomsdir/voms.fnal.gov.35501.pem ${prefix}/vomsdir

clean::
	rm -f *~ 
