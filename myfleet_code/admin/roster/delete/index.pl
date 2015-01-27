#!/usr/local/bin/perl -w

use strict;
use diagnostics;

use Myfleet::Roster;

my $q = new CGI();
$q->param('admin',1);
print Myfleet::Roster::display_delete( $q );
