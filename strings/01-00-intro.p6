use v6.c;

my Str $user = 'Mohammad S Anwar';

say $user;

# or you could do like this
$user.say;

# introspection
say '$user is ', $user.^name;

# number as string
say 2, " is a number interpreted as a string";

# string as number
say "1" + 1;

# how about this?
# "+" has higher precedence than "~"
# First "1" + 10 = 11
# Then "1" ~ 11 = 111
my $exp = "1" ~ "1" + 10;
say $exp;

# eval string
say EVAL "2 + 3";

my @animal = ("fox", "dog");
# prints "dog"
say @animal[1];

my %animal = (quick => 'fox', lazy => 'dog');
# prints "fox"
say %animal<quick>;

my @animal_x = <fox dog>;
# prints "dog"
say @animal_x[1];

my %animal_x = <quick fox lazy dog>;
# prints "fox"
say %animal_x<lazy>;

# advance interpolation control (adverbs)
# :x          :exec           Execute as command and return results
# :t          :to             Interpret result as heredoc terminator

# :0 :raw No escapes at all (unless otherwise adverbed)
say Q/(no interpolation) even backslash has no special meaning: \\ \/;

# single quote Interpolate \\, \q and \' (or whatever)
say 'Lots of options for single quotes';
say q/Lot's of options for single quotes/;
say Q:single/Lot's of options for single quotes/;

# double quote Interpolate all the following
say "Plenty of ways to double quote too";
say qq/"Plenty of ways to double quote too"/;
say Q/"Plenty of way's to double quote too"/;

# :s :scalar Interpolate $ vars
my $var1 = 'dog';
say q:s/The quick brown $var1 jumps over the lazy dog/;
say qs/The quick brown $var1 jumps over the lazy dog/;

# :a :array Interpolate @ vars
say q:a/The quick brown @animal[0] jumps over the lazy @animal[1]/;
say qa/The quick brown @animal[0] jumps over the lazy @animal[1]/;
say qa/We have @animal.elems() elements in @animal[]/;

# :h :hash Interpolate % vars
say q:h/The quick brown %animal{'quick'} jumps over the.../;
say qh/The quick brown %animal{'quick'} jumps over the.../;
say qh/We have %animal.elems() key in %animal{}/;

# :f :function Interpolate & calls

sub get_animal ($tag) { return %animal{$tag}; }
say q:f/:f interpolation - The quick brown &get_animal('quick') jumps.../;
say qf/:f interpolation - The quick brown &get_animal('quick') jumps.../;

# :c :closure Interpolate {...} expressions
say q:c/For $6 you can buy { 6 / 2 } $2 things/;
say qc/For $6 you can buy { 6 / 2 } $2 things/;
say q:c/The quick brown { 'fox'; } jumps.../;
say qc/The quick brown { 'fox'; } jumps.../;

# :b :backslash Interpolate \n, \t, etc. (implies :m)
say q:b/The quick brown fox\n\tJumps over the lazy dog/;
say qb/The quick brown fox\n\tJumps over the lazy dog/;

# :w :words Split result on words (no quote protection)
my ($fox,$dog) = q:w/brown lazy/;
say "$fox $dog";

# :ww :quotewords Split result on words (with quote protection)
my @animals        = q:ww<"brown fox" "lazy dog">;
@animals           = qq:ww/"brown $fox" "lazy %animal{'lazy'}"/;

# :t Defining Multiline Strings (Here Documents)
my $multi_line_here_doc = qq:to/EOF/;
    This is a multiline here document terminated by EOF on a
    line by itself with any amount of whitespace before or
    after the termination string. Leading whitespace equivalent
    to the indentation of the delimiter will be removed from
    all preceding lines.
EOF
say $multi_line_here_doc;
