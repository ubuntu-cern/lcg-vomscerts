Summary:        VOMS server certificates for LCG VOs + biomed + egeode
Name:           lcg-vomscerts
Version:        4.4.0
Release:        1
Copyright:      LCG
Group:          Grid
URL:            http://grid-deployment.web.cern.ch/
Packager:       LCG
Vendor:         LCG
Prefix:         /etc/grid-security
Source:         lcg-vomscerts-4.3.1-1.tar
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
%{prefix}/vomsdir/cclcgvomsli01.in2p3.fr.764
%{prefix}/vomsdir/lcg-voms.cern.ch.2580
%{prefix}/vomsdir/voms.cern.ch.2006-11-20
%{prefix}/vomsdir/voms-test.cern.ch.2006-11-20
