#!/usr/local/bin/perl

use strict;
use diagnostics;

use Myfleet::Roster;

print Myfleet::Roster::display_delete( new CGI() );
