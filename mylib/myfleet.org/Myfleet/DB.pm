package Myfleet::DB;

use DBD::mysql;
use MyfleetConfig qw(%config);

sub connect
{
	return DBI->connect("dbi:mysql:$config{'dbname'}:localhost;mysql_socket=$config{'dbsocket'}", $config{'dbuser'}, $config{'dbpassword'} );
}

1;
