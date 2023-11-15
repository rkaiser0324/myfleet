package Myfleet::DB;

use DBD::mysql;
use MyfleetConfig qw(%config);

sub connect
{
	return DBI->connect("dbi:mysql:$config{'dbname'}:$config{'dbhost'}", $config{'dbuser'}, $config{'dbpassword'} );
}

1;
