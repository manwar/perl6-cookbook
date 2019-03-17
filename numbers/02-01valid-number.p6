#!/usr/bin/env perl6

use v6.c;

type(12);

type(14.12);

sub type ($string) {
    print $string ~ ' is a ';
    given $string {
        when Int { say "Integer"; }
        when Rat { say "Rational"; }
    }
}
