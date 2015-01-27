#!/usr/local/bin/perl -w

use strict;
use diagnostics;

use Myfleet::Article;

print Myfleet::Article::display_article( new CGI(), 'Articles' );

