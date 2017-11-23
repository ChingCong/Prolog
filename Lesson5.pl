% Lesson 5

% Receives a list with two elements and print back
printList([E1,E2]):- writeln(E1), writeln(E2).


% receives a list with two elements and print back the 2nd element in the list.
printSecond([_,E2]):- writeln(E2).


% succeeds if L is an empty list.
empty([]).


% receives a list with two elements and unify the 2nd element to the second variable.
unifySecond([_,E2],E2).


% return the value of it second argument the 3rd element of the list
thirdterm([_, _, E3|_],E3).


% return the value of argument and print
item(first,[E1|_],E1).
item(second,[_,E2|_],E2).
item(third,[_,_,E3|_],E3).


% bind each variable in first list to the corresponding value in second list
lassign([E1|E2],[E1|E2]).


% return last element of the list
laste(X,[X]).
laste(X,[_|T]):- laste(X,T).
laste(X,[]):- X = no_element.


% print the odd elements in the list
print_odd([X]):- writeln(X).
print_odd([X,_]):- writeln(X).
print_odd([H,_|T]):- writeln(H), print_odd(T).


% Result is the sum of multiplication of the list of numbers with a number provide in the third argument.
multiply(Result,[H],M):- Result is H * M.
multiply(Result,[H|T],M):- multiply(Y,T,M), Result is Y+(H*M).


% Write down the corresponding day.
code(0,sunday).
code(1,monday).
code(2,tuesday).
code(3,wednesday).
code(4,thursday).
code(5,friday).
code(6,saturday).
translate([H]):- code(H,Y), writeln(Y).
translate([H|T]):- code(H,Y),writeln(Y),translate(T).


% Check whether is vowel or consonant
vowel(a):- writeln(" - vowel").
vowel(e):- writeln(" - vowel").
vowel(i):- writeln(" - vowel").
vowel(o):- writeln(" - vowel").
vowel(u):- writeln(" - vowel").
vowel(_):- writeln(" - consonant").

check_type([H]):- write(H), vowel(H).
check_type([H|T]):- write(H), vowel(H), check_type(T).

% Get the value of Y which is next to X
next_to(Y,X,[X,Y|_]).
next_to(X,Y,[_|T]):- next_to(X,Y,T).