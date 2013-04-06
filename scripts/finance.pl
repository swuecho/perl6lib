sub FV(Rat $rate, Rat $nper, Rat $pv) {
    $pv*(1+$rate)**$nper;
}
#TODO: perl type coerice??
say FV(0.06,384.0,24.0);
