package Myphoto::DB;

use DBD::mysql;
use MyphotoConfig qw(%photoconfig);

sub connect
{
	return DBI->connect("dbi:mysql:$photoconfig{'dbname'}:$photoconfig{'dbhost'}", $photoconfig{'dbuser'}, $photoconfig{'dbpassword'} );
}

1;
