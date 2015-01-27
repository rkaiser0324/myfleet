package MyfleetConfig;
use vars qw(%config @EXPORT @EXPORT_OK @ISA);
require Exporter;

@ISA = ('Exporter');
@EXPORT_OK = qw(%config);


# database
%config = (
	# domain name
	'domain' => 'vanguard15.org',

	# database
	'dbname' => 'vanguard15',
	'dbuser' => 'root',
	'dbpassword' => '',

	# adsense
	# 'adsenseId' => 'pub-8024486686536860',
	# 'adsenseColor' => ['efefd1','0033ff','efefd1', '000000', '0033ff' ],
	'adsenseId' => 'pub-8317794337664028',
	'adsenseColor' => ['cccccc','0000ff','f0f0f0', '000000', '008000' ],



	# analytics
	'analyticsId' => 'UA-242507-5',

	# header
	'defaultTitle' => 'Vanguard 15 - West Coast Fleet 53',
	'headerHtml' => '<table width="100%"><tr><td><img src="/images/v15_logo_small.gif" alt="V15 small logo" width="73" height="60" align="bottom"><td><h1>Vanguard 15 West Coast Fleet 53</h1></table>',
	'menuBackground' => '#000080',
	'menuForeground' => '#ffffff',
	'menuSelected' => '#c0c0ff',
	'menuItems' => [ 'Home', 'Events', 'Crew List', 'Roster', 'Mailing List', 'Messages', 'For Sale', 'Links', 'Dues', 'Photos' ],
	'menuHrefs' => {
		'Home' => '/',
		'Events' => '/schedule/',
		'Roster' => '/roster/',
		'Crew List' => '/crew/',
		'Messages' => '/msgs/?f=1',
		'For Sale' => '/msgs/?f=2',
		'Mailing List' => '/articles/emaillist',
		'Photos' => '/photos/',
		'Links' => '/articles/links',
		'Dues' => '/dues/',
	},

	# matches up with menu for events/schedule
	'EventsMenu' => 'Events',
	'CrewListMenu' => 'Crew List',

	# crew list 
	'crewPositions' => ['Helm','Crew'],

	# schedule
	'defaultYear' => 2013,
	'series' => [
		{
			'name' => 'Thursday',
			'scoring' => 'thursday_highpoint',
			'dbname' => 'series2',
			'style' => 'asterisk',
			'showScheduleOnHomePage' => 0,
			'showResultsOnHomePage' => 1,
			'showNextOnHomePage' => 0,
			'sponsorHtml' => 'thursday_svendsens_ad'
		},
		{
			'name' => 'Championship',
			'scoring' => 'highpoint',
			'dbname' => 'series1',
			'style' => 'bold',
			'showScheduleOnHomePage' => 1,
			'showResultsOnHomePage' => 1,
			'showNextOnHomePage' => 0
		},
		{
			'name' => 'Weekend',
			'scoring' => 'highpoint',
			'dbname' => 'series4',
			'style' => '',
			'showScheduleOnHomePage' => 0,
			'showResultsOnHomePage' => 0,
			'showNextOnHomePage' => 1
		},
		{
			'name' => 'Tuesday',
			'scoring' => 'highpoint',
			'dbname' => 'series3',
			'style' => 'italic',
			'showScheduleOnHomePage' => 0,
			'showResultsOnHomePage' => 0,
			'showNextOnHomePage' => 0
		},
		{
			'name' => 'Midwinter',
			'scoring' => 'thursday_highpoint',
			'dbname' => 'series5',
			'style' => '',
			'showScheduleOnHomePage' => 0,
			'showResultsOnHomePage' => 0,
			'showNextOnHomePage' => 0
		},
	],

	# dues
	'dues1' => 'Fleet',
	'dues2' => 'Thursday Night',
	# 'dues2' => 'National',
	
	# mailing list
	'mailingList' => 'Sfv15',

	# contacts on home page
	'maximumSpecialOrder' => 10,

	# messages
	'deletePassword' => 'clippercove'
);


1;
