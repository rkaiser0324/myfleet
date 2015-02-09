-- clean up photos
DROP TABLE IF EXISTS photo2;
ALTER TABLE photo DROP COLUMN sailnumbers;
ALTER TABLE photo DROP INDEX hide;

ALTER TABLE regatta CHANGE COLUMN highpoint series1 tinyint NOT NULL default 0;
ALTER TABLE regatta ADD COLUMN series2 tinyint NOT NULL default 0 AFTER series1;
ALTER TABLE regatta ADD COLUMN series3 tinyint NOT NULL default 0 AFTER series2;
ALTER TABLE regatta ADD COLUMN series4 tinyint NOT NULL default 0 AFTER series3;
ALTER TABLE regatta ADD COLUMN series5 tinyint NOT NULL default 0 AFTER series4;

-- venue
ALTER TABLE venue DROP COLUMN directions;
ALTER TABLE venue DROP COLUMN conditions;

-- msgs
DROP TABLE IF EXISTS oldname;
ALTER TABLE title ADD FULLTEXT fttitle (title);
ALTER TABLE txt ADD FULLTEXT fttxt (txt);
ALTER TABLE name ADD FULLTEXT ftname (name);

-- person
ALTER TABLE person RENAME oldperson;
CREATE TABLE person (
  id smallint(6) NOT NULL auto_increment,
  firstname varchar(32) NOT NULL default '',
  lastname varchar(48) NOT NULL default '',
  street varchar(64) NOT NULL default '',
  city varchar(32) NOT NULL default '',
  state char(2) NOT NULL default '',
  zip varchar(10) default NULL,
  phone varchar(20) NOT NULL default '',
  email varchar(100) NOT NULL default '',
  url varchar(128) NOT NULL default '',
  type enum('Owner','Crew','Other') default 'Other',
  hullnumber smallint(5) default NULL,
  special varchar(64) NOT NULL default '',
  specialorder smallint(6) NOT NULL default 0,
  note VARCHAR(500) NOT NULL default '',
  boatname varchar(64) NOT NULL default '',
  sailnumber varchar(8) NOT NULL default '',
  password varchar(16) NOT NULL default '',
  photo_id int(16) NOT NULL default 0,
  lastupdateip varchar(128) NOT NULL default '',
  lastupdate timestamp(14) NOT NULL,
  PRIMARY KEY (id),
  KEY specialorder (specialorder),
  KEY firstname (lastname,firstname),
  KEY hullnumber (hullnumber)
) TYPE=MyISAM;

DROP TABLE IF EXISTS crew;
CREATE TABLE crew (
  id smallint(6) NOT NULL auto_increment,
  firstname varchar(32) NOT NULL default '',
  lastname varchar(48) NOT NULL default '',
  city varchar(32) NOT NULL default '',
  state char(2) NOT NULL default '',
  phone varchar(20) NOT NULL default '',
  email varchar(100) NOT NULL default '',
  height smallint(3) NOT NULL default 0,
  weight smallint(3) NOT NULL default 0,
  positions VARCHAR(200) NOT NULL default '',
  note VARCHAR(500) NOT NULL default '',
  password varchar(16) NOT NULL default '',
  lastupdateip varchar(128) NOT NULL default '',
  lastupdate timestamp(14) NOT NULL,
  PRIMARY KEY (id),
  KEY name (lastname,firstname)
) TYPE=MyISAM;

DROP TABLE IF EXISTS dues_paid;
CREATE TABLE dues_paid (
  year int(10) unsigned NOT NULL default '0',
  hullnumber int(10) unsigned NOT NULL default '0',
  dues1 tinyint(3) unsigned NOT NULL default '0',
  dues2 tinyint(3) unsigned NOT NULL default '0',
  name varchar(200) NOT NULL default '',
  note text,
  modification_date timestamp(14) NOT NULL,
  PRIMARY KEY  (year,hullnumber)
) TYPE=MyISAM;

ALTER TABLE msg ADD COLUMN password varchar(40) NOT NULL default '' AFTER bad;
ALTER TABLE msg ADD COLUMN deleted tinyint(1) NOT NULL default 0 AFTER bad;

update regatta set series2 = 1 where name like 'Thursday%';
update regatta set series3 = 1 where name like '%Tuesday%';
update regatta set series4 = 1 where series2 = 0 AND series3 = 0;
