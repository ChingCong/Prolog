% Lesson 2 - Relationship

% --FACT--
men(john).
men(fred).
men(harry).
women(mary).
women(julie).
women(susan).
women(anne).

% properties
blonde(john).
darkhair(fred).
darkhair(harry).
blonde(julie).
blonde(susan).
brunette(mary).
brunette(anne).

% --RULE--
like(X,Y):- men(X), women(Y); men(Y), women(X).

likes(john,Y):- blonde(Y), like(john,Y).
likes(fred,Y):- brunette(Y), like(fred,Y).
likes(mary,X):- darkhair(X), like(X, mary).
likes(julie,X):- darkhair(X), like(X, julie).