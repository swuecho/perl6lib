use v6;
grammar Question::Grammar {
    token TOP {
        \n*
        <question>+
    }
    token question {
        <header>
        <answer>+
    }
    token header {
        ^^ $<type>=['pickone'|'pickmany'] ':' \s+ $<text>=[\N*] \n
    }
    token answer {
        ^^ \s+ $<correct>=['ac'|'ai'] ':' \s+ $<text>=[\N*] \n
    }
}

my $text = Q {
pickmany: Which items are food?
    ac: Rice
    ac: Orange
    ac: Mushroom
    ai: Shoes
pickone: Which item is a color?
    ac: Orange
    ai: Shoes
    ai: Mushroom
    ai: Rice
};
my $match = Question::Grammar.parse($text);

class Question::Answer {
    has $.text is rw;
    has Bool $.correct is rw;
}
class Question {
    has $.text is rw;
    has $.type is rw;
    has Question::Answer @.answers is rw;
}

=begin comment
my @questions = $match<question>.map: {
    Question.new(
        text    => ~$_<header><text>,
        type    => ~$_<header><type>,
        answers => $_<answer>.map: {
            Question::Answer.new(
                text => ~$_<text>,
                correct => ~$_<correct> eq 'ac',
            )
        },
    );
};

=end comment

class Question::Actions {
    method TOP($/) {
        make $<question>».ast;
    }
    method question($/) {
        make Question.new(
            text => ~$<header><text>,
            type => ~$<header><type>,
            answers => $<answer>».ast,
        );
    }
    method answer($/) {
        make Question::Answer.new(
            correct => ~$<correct> eq 'ac',
            text => ~$<text>,
        );
    }
}
my $actions = Question::Actions.new();
my @questions = Question::Grammar.parse($text, :actions($actions)).ast.flat;

for @questions -> $q {
    say $q.text;
    for $q.answers.kv -> $i, $a {
        say "    $i) {$a.text}";
    }
}

