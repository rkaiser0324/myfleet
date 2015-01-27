myfleet
=======

Software for running sailing fleet websites.

## Setup on CentOS 7 with Apache 2.4
```
# If needed
ln -s /bin/perl /usr/local/bin/perl
# Libraries
yum install -y gd-devel
# Install Perl modules
cpan install Module::Build CGI DBD::mysql Data::ICal Date::ICal Authen::Captcha Apache::Session Geo::Gpx \
    XML::RSS LWP::Protocol LWP::Protocol::https \
    Fatal XML::SAX XML::Elemental::Element \
    XML::RSS::Parser DBI Cache::Memcached Net::DNS;
# This module errors out due to https://rt.cpan.org/Public/Bug/Display.html?id=84640 - so, for now, just force it.
cpan install -f LWP::Parallel;
```

Add `vanguard15.org-apache.conf` to your loaded VirtualHosts.