% Lesson 7 - Cut & Negation as Failure.

% Classifies numbers into three classes: positive, zero and negative
class(0,zero):- !.
class(Number,positive):- Number>0,!.
class(_,negative).


% Check that a list is acceptable if it does not contain the number 10
acceptable([]).
acceptable([10|_]):- !,fail.
acceptable([_|T]):- acceptable(T).