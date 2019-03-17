#!/usr/bin/env perl6

use v6.c;

my $string = "the cat sat on the mat";

say $string = $string.uc; # THE CAT SAT ON THE MAT

say $string .= lc;        # the cat sat on the mat

say $string.wordcase;     # The Cat Sat On The Mat

$string.tc.say;           # The cat sat on the mat

