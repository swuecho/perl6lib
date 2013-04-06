use lib '.';
use PDF::Object::Dictionary;
use PDF::Object::Stream;

my $dic = PDF::Object::Dictionary.new(pairs => ("a" => 2, "b" =>4));

say ~$dic;

my $stream = PDF::Object::Stream.new(dictionary => $dic, bytes => "this is bytes");

say ~$stream;


