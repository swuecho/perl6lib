class PDF::Object::Dictionary is rw does Stringy {
    has %.dic;
# TODO: change the output format
    method Stringy1 {
    my @keys = %.dic.keys X~ ' ';
    my @values = %.dic.values X~ "\n";
    "<<\n" ~
      (@keys >>~<< @values)  ~
    ">>\n"
    }
# output string
   method Stringy {
   "<<\n" ~ 
   %.dic.kv.join(' ') ~ "\n" ~
   ">>\n"
}

}

my %page= 'a' => 1, 'b' => 2, 'c'=>3;
say %page;
my $page_dic = PDF::Object::Dictionary.new(dic => %page);
say ~$page_dic;


