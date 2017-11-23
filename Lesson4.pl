% Lesson 4 - Recrusive

% Compare height
taller(bob,mike).
taller(mike,jim).
taller(jim,george).

height(X,Y):- taller(X,Y).
height(X,Y):- taller(X,Z),height(Z,Y).

% Check relationship
knows(A,B) :- friends(A,B).
knows(A,B) :- friends(A,C),knows(C,B).
friends(john, alice).
friends(alice, tom).
friends(sue, john).
friends(sue, clive).
friends(fred, tom).
friends(tom, sue).


% Get remainder when 5 is divided into X
mod5(X,Y):- X < 5, X = Y.
mod5(X,Y):- X >= 5, Z is X - 5, mod5(Z,Y).


% Count Down
count(X):- X < 0, X = 1.
mt(X):- X >= 0, M is X - 1, writeln(X), mt(M).