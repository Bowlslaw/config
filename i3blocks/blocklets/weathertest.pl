#!/usr/bin/env perl

use strict;
use warnings;
use 5.018;

my $weather = `curl -Ss 'https://wttr.in?0&T&Q' | cut -c 16- | head -2 | xargs`;

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
elsif($weather =~ /.rain/i) {
	$sign = " ";
}
elsif($weather =~ /.sun|clear./i) {
	$sign = " ";
}
elsif($weather =~ /.snow./i) {
	$sign = " ";
}

print $sign . $weather;
