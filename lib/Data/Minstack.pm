class Minstack {

    has @.stack;    
    has @.min;
    

    method push($item) {
	push @.stack, $item;  # strange!! push @.stack $item is not right
	if @.min==0 or @.min[*-1] > $item {
	    push @.min, $item;
	}
    }

    method pop() {	
	my $item=pop @.stack;
	if $item == @.min[*-1] {
	    pop @.min;
	}
	return $item;
    }

    method min() {
	@.min[*-1];
    }

}
=begin comment
my @min=Minstack.new;
push @min, 5;
push @min, 3;
push @min, 10;
push @min, 2;
say(pop @min); # 2
say(min @min); # 3
say(pop @min); # 10
say(min @min); # 3
say(pop @min); # 3
say(min @min); # 5
say(pop @min); # 5


#if @.stack==0 {
#	    say "min stack is empty";
#	    return
#	}
=end comment
