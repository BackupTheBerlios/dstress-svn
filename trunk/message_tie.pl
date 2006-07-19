#!/usr/bin/perl

my $message_pattern = shift;
my $last_cmd;

while (<>) {
	if ($_ =~ /^(run|norun|compile|nocompile): (.*)/){
		$last_cmd = $2;
	}
	if(/$message_pattern/) {
		print "$last_cmd\n$_\n";
	}
}

