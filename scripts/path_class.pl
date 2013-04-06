use Path::Class qw/ file dir /;
use v5.17;
#my $dir = dir(qw/ home santa children naughty / );

# could also have done
my $dir = dir( '/home/echo/Dropbox/perl' );
# and Path::Class would have understood



# or simply
my $entry = $dir->file('testpath.txt');
say $entry;
say "Uh oh" if -f $entry;
say "testt";

opendir my $dh, $dir;
printf "there are %d naughty children in this directory\n",
    scalar grep { /^\.\.$/ } readdir $dh;
