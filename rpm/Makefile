package = lcg-vomscerts
version = $(shell awk '/^Version/ { print $$2 }' ../${package}.spec)

.PHONY: clean rpm builddirs

default: rpm

clean::
	rm -rf RPMS SRPMS SPECS SOURCES BUILD

builddirs:
	mkdir -p RPMS/noarch
	mkdir -p SRPMS/
	mkdir -p SPECS/
	mkdir -p SOURCES/
	mkdir -p BUILD/

rpm: builddirs
	tar -C .. --gzip --exclude='*CVS*' -cf SOURCES/${package}-${version}.tar.gz \
		Makefile vomsdir vomses
	rpmbuild --define "_topdir $(PWD)" --define "_tmppath $(PWD)/BUILD" -ba ../${package}.spec

