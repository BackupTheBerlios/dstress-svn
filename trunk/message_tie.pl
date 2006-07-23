#!/usr/bin/perl

use strict;
use warnings;

my $message_pattern = shift;
my $last_cmd;

while (<>) {
	if (/^(run|norun|compile|nocompile): (.*)/) {
		$last_cmd = $2;
	} elsif (/$message_pattern/) {
		print "$last_cmd\n$_\n";
	}
}
