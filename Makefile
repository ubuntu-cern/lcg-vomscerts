prefix=/etc/grid-security

.PHONY: configure install clean

all: configure

install: 
	@echo installing ...
	@mkdir -p $(install_prefix)/etc/grid-security/vomsdir
	@install -m 0644 vomsdir/cclcgvomsli01.in2p3.fr.1413.pem ${prefix}/vomsdir
	@install -m 0644 vomsdir/lcg-voms.cern.ch.2009-03-03.pem ${prefix}/vomsdir
	@install -m 0644 vomsdir/lcg-voms.cern.ch.2010-01-18.pem ${prefix}/vomsdir
	@install -m 0644 vomsdir/vo.racf.bnl.gov.40260.pem ${prefix}/vomsdir
	@install -m 0644 vomsdir/voms-pilot.cern.ch.2009-06-30.pem ${prefix}/vomsdir
	@install -m 0644 vomsdir/voms.cern.ch.2009-06-22.pem ${prefix}/vomsdir
	@install -m 0644 vomsdir/voms.fnal.gov.35501.pem ${prefix}/vomsdir
	@mkdir -p $(install_prefix)/etc/vomses
	for vo in alice atlas cms dteam eela geant4 lhcb na48 ops unosat vo.gear.cern.ch vo.sixt.cern.ch; do install -m 0644 vomses/$$vo $(install_prefix)/etc/vomses; done

clean::
	rm -f *~ 
