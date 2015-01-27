#!/usr/local/bin/perl -w

use strict;
use diagnostics;

use Myfleet::Roster;

print Myfleet::Roster::display_detail( new CGI() );
