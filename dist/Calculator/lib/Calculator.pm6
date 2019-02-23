use v6.c;

class Calculator:ver<0.0.1> {
    has Int $.x is required where * > 0;
    has Int $.y is required where * > 0;

    method TWEAK(:$!x!, :$!y!) {
        die 'ERROR: x should be > y.' unless $!x > $!y;
    };

    method add() {
        return self.x + self.y;
    }

    method substract() {
        return self.x - self.y;
    }

    method multiply() {
        return self.x * self.y;
    }

    method divide() {
        return self.x / self.y;
    }
}


=begin pod

=head1 NAME

Calculator - My first Perl6 sample distriubtion.

=head1 SYNOPSIS

=begin code :lang<perl6>

use Calculator;
my $c = Calculator->new( :x<10>, :y<5> );

say $c->add;
say $c->substract;
say $c->multiply;
say $c->divide;

=end code

=head1 DESCRIPTION

Calculator is a very basic learning distribution. I found it easy to
experiment with Perl6.

=head1 AUTHOR

Mohammad S Anwar <mohammad.anwar@yahoo.com>

=head1 COPYRIGHT AND LICENSE

Copyright 2019 Mohammad S Anwar

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
