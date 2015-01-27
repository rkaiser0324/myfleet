#!/usr/local/bin/perl -w

use diagnostics;
use strict;

use Myfleet::Roster;

print Myfleet::Roster::admin_roster( new CGI() );
