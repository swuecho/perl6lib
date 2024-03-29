my @words=grep {$_~~m/^<[a-z]>+/}, (slurp 'big.txt').lc.words;

sub train (@words) {
    my %table;
    %table{$_}++ for @words; # %table<$_> is not right
    %table;
}


my %NWORDS = train(@words);
my $alphabet = 'a'..'z';

sub edits1($word) {
   my  @splits= map {[substr($word,0,$_),substr($word,$_,$word.chars)]}, ^$word.chars;
   deletes    = [a + b[1:] for a, b in splits if b]
   transposes = [a + b[1] + b[0] + b[2:] for a, b in splits if len(b)>1]
   replaces   = [a + c + b[1:] for a, b in splits for c in alphabet if b]
   inserts    = [a + c + b     for a, b in splits for c in alphabet]
   return set(deletes + transposes + replaces + inserts)

def known_edits2(word):
    return set(e2 for e1 in edits1(word) for e2 in edits1(e1) if e2 in NWORDS)

def known(words): return set(w for w in words if w in NWORDS)

def correct(word):
    candidates = known([word]) or known(edits1(word)) or known_edits2(word) or [word]
    return max(candidates, key=NWORDS.get)
