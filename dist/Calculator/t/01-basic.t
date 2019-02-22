use v6.c;
use Test;
use Calculator;

my $c = Calculator.new( :x<10>, :y<5> );

is $c.add(),       15, '10+5';
is $c.substract(), 5,  '10-5';
is $c.multiply(),  50, '10*5';
is $c.divide(),    2,  '10/5';

done-testing;
