sub len($str) { $str.chars }


sub interact(&f,$file) {
    my $string = slurp $file;
    return f($string);
}


sub MAIN($file) {

    say interact(&len,$file);

}
