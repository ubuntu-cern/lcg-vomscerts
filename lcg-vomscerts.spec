Summary:        VOMS server certificates for LCG VOs + biomed + egeode
Name:           lcg-vomscerts
Version:        5.6.0
Release:        1
Copyright:      LCG
Group:          Grid
URL:            http://grid-deployment.web.cern.ch/
Packager:       LCG
Vendor:         LCG
Prefix:         /etc/grid-security
Source:         lcg-vomscerts-5.6.0-1.tar
BuildArch:      noarch
BuildRoot:      %{_tmppath}/%{name}-root
Obsoletes:      lcg-vomscert-alice
Obsoletes:      lcg-vomscert-atlas
Obsoletes:      lcg-vomscert-cms
Obsoletes:      lcg-vomscert-dteam
Obsoletes:      lcg-vomscert-lhcb
Obsoletes:      lcg-vomscert-sixt
Provides:       lcg-vomscert-alice
Provides:       lcg-vomscert-atlas
Provides:       lcg-vomscert-cms
Provides:       lcg-vomscert-dteam
Provides:       lcg-vomscert-lhcb
Provides:       lcg-vomscert-sixt


%description
VOMS server certificates for LCG VOs + biomed + egeode
#
# Prep
#
%prep
%setup -c

#
# Build
#
%build

#
# Install
#
%install

mkdir -p $RPM_BUILD_ROOT%{prefix}
tar cf - . | (cd $RPM_BUILD_ROOT%{prefix} && gtar xfBp -)

#
# Clean
#
%clean

rm -rf $RPM_BUILD_ROOT

%files
%defattr(-,root,root)
%{prefix}/vomsdir/cclcgvomsli01.in2p3.fr.4786.pem
%{prefix}/vomsdir/lcg-voms.cern.ch.2009-03-03.pem
%{prefix}/vomsdir/vo.racf.bnl.gov.30105.pem
%{prefix}/vomsdir/voms-pilot.cern.ch.2009-06-30.pem
%{prefix}/vomsdir/voms.cern.ch.2009-06-22.pem
%{prefix}/vomsdir/voms.fnal.gov.35501.pem
