#!/usr/local/bin/perl -w

use strict;
use diagnostics;

use Myfleet::Crew;

my $q = new CGI();
$q->param('admin',1);
print Myfleet::Crew::display_add( $q );
