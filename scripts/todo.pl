
sub view ($file='todo.org') {
    my $order=1;
    my $todo=open "/home/echo/Dropbox/todo/$file";
    my @lines= $todo.lines;
    $todo.close;
    say " there are "~ +@lines ~ " tasks";
    for @lines -> $line {
	say "$order"~"."~"$line";
        $order++;
    }
}
sub viewdone() {
    view("done.org");
}
sub add() {
    my $task= prompt "add a task,please\n { 'X' x 10 } \n";    
    my $todo=open '/home/echo/Dropbox/todo/todo.org',:a ;
    $todo.say($task);
    $todo.close;
    say "adding...task\n\n "~ "$task\n";
}

sub done() {
    my $todo=open '/home/echo/Dropbox/todo/todo.org';
    my %tasks;
    my $i=1;
    for $todo.lines -> $line {
	say "$i"~"."~"$line";
        %tasks{$i}=$line;
	$i++;
    }
    $todo.close;
    my $task = prompt "done task number?\n";
    my $done = open '/home/echo/Dropbox/todo/done.org',:a;
    $done.say(%tasks{$task});
    %tasks.delete($task);
    my $write = open '/home/echo/Dropbox/todo/todo.org',:w;
    for %tasks.values {
	$write.say($_);
    }
    $write.close;

}

multi MAIN('a'){ view ; add ;}
multi MAIN('v'){ view ;}
multi MAIN('d'){ done ;}
multi MAIN('vd'){ viewdone;}



#sub MAIN ($op="v"){ #$op="v" eqv $op='v'
 #   my %All = v=>&view, a=>&add, d =>&done;
  #  %All{$op}();
#}


#%All<$op>();
#line;
#TODO:hash index
# remove= delete the element in the @lines
#lookup perl6 list operate.
#promot
#delete i elem from arry, or from hash.
#@new=@od[0,i-2]+@old[i..
#@firsts=@lines[0..$i-1]
#@lasts=@lines[$i-1..@lines.elems]
#slice
#@new=@odd[0..$i-2,$i-1..@odd.elems]
#add elems

