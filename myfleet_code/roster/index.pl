#!/usr/local/bin/perl -w

use diagnostics;
use strict;

use Myfleet::Roster;

print Myfleet::Roster::display_roster( new CGI() );
