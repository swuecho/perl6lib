use PDF;
use PDF::Header;
use PDF::Object;
use PDF::Crossref;
use PDF::Trailer;
use PDF::Text;

## the body part
#############################

my @objects;
sub add_object($preobject){
        state $counter=1;
        my $adobe_object = PDF::Object.new(order => $counter, content => $pre_object);
        $counter++;
        push @objects, $adobe_object;
}

sub add_hash(%config) {
        my $adobe_dic= PDF::Object::dictionary.new(dic => %config);
        add_object($adobe_dic);
}




my %Catalog;
add_hash(%Catalog);
my %Pages;
add_hash(%Pages);
my %Page;
add_hash(%Page);
my %Info;
add_hash(%Info);
# start to enter a string;
my $string;

my $adobe_string= PDF::Object::String.new(string => $string);
## other parameters
my $text= PDF::Text.new(text => $adobe_string);
my $adobe_stream= PDF::Object::Stream.new(dictionary => ??, bytes => $text);

add_object($adobe_stream);

my $header = PDF::Header.new(Version ='1.7');

my $xref = PDF::Crossref.new(position => map {.size}, @objects);

my $trailer = PDF::Trailer.new();

my $pdf= PDF.new(header => $header,
                 objects => @objects,
                 xref => $ref,
                 trailer => $trailer);
say "$pdf"
