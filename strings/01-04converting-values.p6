#!/usr/bin/env perl6

use v6.c;

my $char = 'a';
my $num  = $char.ord;
say $num;

my $char2 = $num.chr;
say $char2;

my $copyright = '©';
say $copyright ~ " : " ~ $copyright.ord ~ " : " ~ $copyright.ord.chr;

$char = 'foo';
# ords returns the codepoints of all char in a string
say $char ~ " : " ~ $char.ords;
