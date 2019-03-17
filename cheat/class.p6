use v6.c;

class Journey {
    # . creates accessor for free. by default attributes are readonly
    has $.origin;
    has $.destination;
    # ! just creates attribute without any accessor
    has @!travelers;
    # here create read/write attribute
    has $.notes is rw;

    method add-traveler($name) {
        if $name ne any(@!travelers) {
            push @!travelers, $name;
        }
        else {
            warn "duplicate traveler $name";
        }
    }

    method describe() {
        "From $!origin to $!destination"
    }

    # works like as_string(), stringify object
    method Str {
        "From $!origin to $!destination\n"
    }

    method travelers() {
        return join(",", @!travelers);
    }
}

my $journey = Journey.new( :origin<Here>, :destination<There> );
$journey.add-traveler( "me" );
say $journey.travelers;
say $journey;


my Journey $journey1 .= new( :origin<Here1>, :destination<There1> );
$journey1.add-traveler( "me1" );
say $journey1.travelers;
say $journey1;
