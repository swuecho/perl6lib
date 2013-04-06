class PDF::Object::Indirect is rw does Stringy {
    has Int $.order;
    has Int $.generation = 0;
    method Stringy {
    $.order ~ ' ' ~ $.generation ~' ' ~ 'R';

    }

}

my $in1 = PDF::Object::Indirect.new(order => 2);

my $in2 = PDF::Object::Indirect.new(order => 4);

class PDF::Object::Array is rw does Stringy {
    has @.values;
# TODO: change the output format
    method Stringy {
     '['  ~  @.values.join("\n") ~ ']'
    }

}

 my @a = ($in1, $in2);

my $arr = PDF::Object::Array.new( values => @a);

say "$arr";

