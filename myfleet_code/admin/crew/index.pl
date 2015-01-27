#!/usr/local/bin/perl -w

use diagnostics;
use strict;

use Myfleet::Crew;

print Myfleet::Crew::admin_roster( new CGI() );
