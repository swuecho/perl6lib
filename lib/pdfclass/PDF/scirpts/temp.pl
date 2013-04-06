my %Catalog;
##TODOse object.counter!!!

my $Catalog_dic= PDF::Object::Dictionary(dic => %catalog);
my $Catalog_object = PDF::Object.new( order => $counter, content => $Catalog_dic);
$counter++;
