myfleet
=======

Software for running sailing fleet websites.

## Webserver setup

### CentOS 7 with Apache 2.4
```
# If needed
ln -s /usr/local/bin/perl /bin/perl
# Libraries
yum install -y gd-devel
# Compile ImageMagick (with Perl) directly from source, to avoid http://forums.cpanel.net/f5/image-magick-perl-module-installation-failure-64836.html
wget http://www.imagemagick.org/download/ImageMagick-6.9.0-4.zip
unzip ImageMagick-6.9.0-4.zip && cd ImageMagick-6.9.0-4
./configure --with-perl --enable-shared
make && make install
cd PerlMagick 
perl Makefile.PL
make && make install
# As per http://www.imagemagick.org/discourse-server/viewtopic.php?p=24869&sid=08198ae712c2ebc64aba8d58e4459b0a#p24869
ldconfig /usr/local/lib
# Install Perl modules
cpan install Module::Build CGI DBD::mysql Data::ICal Date::ICal Authen::Captcha Apache::Session Geo::Gpx \
    XML::RSS LWP::Protocol LWP::Protocol::https \
    Fatal XML::SAX XML::Elemental::Element \
    XML::RSS::Parser DBI Cache::Memcached Net::DNS;
# This module errors out due to https://rt.cpan.org/Public/Bug/Display.html?id=84640 - so, for now, just force it.
cpan install -f LWP::Parallel;
```

## Ubuntu with nginx as a reverse-proxy to Apache 2.4
```
# If needed
ln -s /usr/bin/perl /usr/local/bin/perl 
# Libraries
apt-get install libexpat1-dev libgd2-xpm-dev build-essential libgd-gd2-perl perlmagick
# Install Perl modules
cpan install Module::Build CGI DBD::mysql Data::ICal Date::ICal Authen::Captcha Apache::Session Geo::Gpx \
    XML::RSS LWP::Protocol LWP::Protocol::https \
    Fatal XML::SAX XML::Elemental::Element \
    XML::RSS::Parser DBI Cache::Memcached Net::DNS
# This module errors out due to https://rt.cpan.org/Public/Bug/Display.html?id=84640 - so, for now, just force it.
cpan install -f LWP::Parallel;
```

## Both 

Then add `vanguard15.org-apache.conf` to your loaded VirtualHosts.

Create the "vanguard15" user:
```
/usr/sbin/useradd vanguard15
passwd vanguard15
# Enter the desired password
htpasswd -c /media/sf_shared/vanguard15/.htpasswd vanguard15
# Enter the desired password
```