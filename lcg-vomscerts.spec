Summary:        VOMS server certificates for LCG VOs + biomed + egeode
Name:           lcg-vomscerts
Version:        5.5.1
Release:        1
License:        LCG
Group:          Grid
URL:            http://grid-deployment.web.cern.ch/
Packager:       LCG
Vendor:         LCG
Prefix:         /
Source:         %{name}-%{version}.tar.gz
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
make install prefix=$RPM_BUILD_ROOT%{prefix}

%clean

rm -rf $RPM_BUILD_ROOT

%files
%defattr(-,root,root)
%{prefix}/etc/grid-security/vomsdir/*
%{prefix}/etc/vomses/*
