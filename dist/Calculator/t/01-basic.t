use v6.c;
use Test;
use Calculator;

dies-ok { Calculator.new( :x<10>,  :y<20>  ) }, 'No Calculator object (x < y)';
dies-ok { Calculator.new( :x<10>,  :y<-20> ) }, 'No Calculator object (y < 0)';
dies-ok { Calculator.new( :x<-10>, :y<20>  ) }, 'No Calculator object (x < 0)';

my $c = Calculator.new( :x<10>, :y<5> );

use-ok 'Calculator';
isa-ok $c, 'Calculator', 'Calculator object';
is $c.add(),       15, '10+5';
is $c.substract(), 5,  '10-5';
is $c.multiply(),  50, '10*5';
is $c.divide(),    2,  '10/5';

done-testing;
