vomsdir_prefix=$(prefix)/etc/grid-security/vomsdir
vomses_prefix=$(prefix)/etc/vomses

.PHONY: configure install clean

all: configure

install: 
	@echo installing ...
	@mkdir -p $(vomsdir_prefix)
	@install -m 0644 vomsdir/cclcgvomsli01.in2p3.fr.4786.pem $(vomsdir_prefix)
	@install -m 0644 vomsdir/lcg-voms.cern.ch.2009-03-03.pem $(vomsdir_prefix)
	@install -m 0644 vomsdir/vo.racf.bnl.gov.30105.pem $(vomsdir_prefix)
	@install -m 0644 vomsdir/voms-pilot.cern.ch.2008-09-05.pem $(vomsdir_prefix)
	@install -m 0644 vomsdir/voms-pilot.cern.ch.2009-06-30.pem $(vomsdir_prefix)
	@install -m 0644 vomsdir/voms.cern.ch.2008-09-04.pem $(vomsdir_prefix)
	@install -m 0644 vomsdir/voms.cern.ch.2009-06-22.pem $(vomsdir_prefix)
	@install -m 0644 vomsdir/voms.fnal.gov.26705.pem $(vomsdir_prefix)
	@mkdir -p $(vomses_prefix)
	for vo in alice atlas cms dteam eela geant4 lhcb na48 ops unosat vo.gear.cern.ch vo.sixt.cern.ch; do install -m 0644 vomses/$$vo $(vomses_prefix); done

clean::
	rm -f *~ 
