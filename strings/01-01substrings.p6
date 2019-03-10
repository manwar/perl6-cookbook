#!/usr/bin/env perl6

use v6;

my ($string, $offset, $count) = ('Rakudo is da bomb', 2, 7);
say Q/'Rakudo is da bomb'.substr(2,7) => /, $string.substr($offset, $count);
say Q/'Rakudo is da bomb'.substr(2) => /, $string.substr($offset);
