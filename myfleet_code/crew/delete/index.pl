#!/usr/local/bin/perl -w

use strict;
use diagnostics;

use Myfleet::Crew;

print Myfleet::Crew::display_delete( new CGI() );
