#!/usr/bin/env perl6

use v6.c;

my $string = "\t the cat sat on the mat  ";

$string.=trim;

say :$string.perl;

my $a = "   I love Perl 6    ";
$a.=trim;
say "[$a]";
