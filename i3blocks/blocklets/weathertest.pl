#!/usr/bin/env perl

use strict;
use warnings;
use 5.018;

my $weather = `curl -Ss 'https://wttr.in?0&T&Q' | cut -c 16- | head -2 | xargs echo`;

my $sign = " ";

#                     

if($weather =~ /.cloudy/i) {
	$sign = " ";
}
elsif($weather =~ /mist/i) {
	$sign = " ";
}
elsif($weather =~ /overcast/i) {
	$sign = " ";
}
elsif($weather =~ /rain/i) {
	$sign = " ";
}
elsif($weather =~ /sun/i) {
	$sign = " ";
}
elsif($weather =~ /clear/i) {
	$sign = " ";
}
elsif($weather =~ /.snow./i) {
	$sign = " ";
}
elsif($weather =~ /sorry/i) {
	$weather = ' ';
}

print $sign . $weather;
