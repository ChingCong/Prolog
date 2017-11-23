% Lesson 1 - A family hierarchy

% A list of facts
mother(pam, bob).
father(tom, bob).
father(tom, liz).
father(bob, ann).
father(bob, pat).
mother(pat, jim).

% A goal: X is the parent of Y if X is Y's father/mother.
parent(X,Y) :- father(X,Y).
parent(X,Y) :- mother(X,Y).

% X is the child of Y if X is Y's father/mother.
child(X,Y) :- father(X,Y).
child(X,Y) :- mother(X,Y).

% X is the grandchild of Y if X is Y's grandfather/grandmother.
grandfather(X,Y) :- father(X,Z),parent(Z,Y).
grandmother(X,Y) :- mother(X,Z),parent(Z,Y).