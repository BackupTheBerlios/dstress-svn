#!/usr/bin/perl

while (<>) {
	if ($_ =~ /[ \t]+$/){
		print "$ARGV\n";
	}
}

