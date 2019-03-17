#!/usr/bin/env perl6

use v6.c;

use Algorithm::Soundex;

my Algorithm::Soundex $s .= new();

say  $s.soundex("Smith");
say  $s.soundex("Smythe");
say  $s.soundex("Bloggs");
