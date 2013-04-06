class PDF::Object is rw does Stringy {
       has $.order;
       has $.generation = 0;
       has $.content;
       method Stringy {
       "{$.order} {$.generation} obj\n" ~
       "{$.content}\n" ~
       "endobj";

       }

## does int
       method size {
       self.Stringy.subst(/\s+/,'s',:g).chars
}
}

my $obj = PDF::Object.new(order => 2, content => "con    tent");
say ~$obj;
say $obj.size;
