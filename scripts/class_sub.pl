class Answer {



has $.answer is rw;


sub is_valid ($value) {

    return 1 if 10 < $value < 42;

}


method set_answer ($new) {

    $.answer = $new if is_valid($new);

	}
	}

my $answer=Answer.new;
$answer.set_answer(30);
say $answer.answer;            #30 
$answer.set_answer(60);
say $answer.answer;            #30
#because 60 is not a valid value 
