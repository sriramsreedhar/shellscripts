#!/usr/bin/perl

use strict;
use warnings;
use Net::SSH::Perl;

my $host = 'localhost';
my $pass = 'XXXxxx';
my $user = 'sriram';
my $cmd  = 'pwd';

my $ssh = Net::SSH::Perl->new($host, protocol => '1,2', debug => 1);
$ssh->login($user, $pass);
my($stdout, $stderr, $exit) = $ssh->cmd($cmd);
print $stdout, "\n";
