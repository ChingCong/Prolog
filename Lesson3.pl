% Lesson 3

% Calculate an area 
area(H,W, Area) :- Area is H * W.


% Calculate a perimeter
perimeter(R, Perimeter):- Perimeter is  2 * 22 / 7 * R.


% Calculate square of a number
sqr(L, Result):- Result is  L * L.


% Increment by 1
increment(X,Y):- Y is X + 1.


% Get grade of student which his/her score is greater than 80 
student(ali,67).
student(lim,85).
student(ramu,82).
student(liza,81).

grade(X):- student(X,Y), Y > 80.