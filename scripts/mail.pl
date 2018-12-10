#!/usr/bin/env perl

use strict;
use warnings;
use strict;

use Email::Sender::Simple qw(sendmail);
use Email::Simple;
use Email::Simple::Creator;

my $email = Email::Simple->create(
	header => [
		To      => '"Xavier Q. Ample" <3146508931@txt.att.net>',
		From    => '"Bob Fishman" <orz@example.mil>',
		Subject => "don't forget to *enjoy the sauce*",
	],
	body => "This message is short, but at least it's cheap.\n",
);

sendmail($email);
