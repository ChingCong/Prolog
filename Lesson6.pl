% Lesson 6 - Built-in operations

% member - check whether the student enroll for that subject or not
enrol(ridzuan,[logic_programming,
	       artificial_intelligence,
	       mathematics,statistic]).
enrol(syahidah,[artificial_intelligence,
		mathematics,
		fuzzy_logic,
		taekwando]).
enrol(mira,[mathematics,
	    fuzzy_logic,
	    creative_writing,
	    internet_technology]).
enrol(kamarul,[fuzzy_logic,
	       creative_writing,
	       digital_circuit,
	       electric_electronic]).
enrol(mohd_ali, [digital_circuit,
		 electric_electronic,
		 robotics_automation]).

check(X,Y):- enrol(X,S),member(Y,S).


% append - insert new subject in the student’s list
insert(X,Y):- enrol(X,S), append([Y],S,N),writeln(N).


% delete/select - drop a subject from the list that a student has enrolled into
%drop(X,Y):- enrol(X,S),delete(S,Y,N),writeln(N).
drop(X,Y):- enrol(X,S),select(Y,S,N),writeln(N).


% reverse - check list whether is a palindrome (reads the same in the forward and in the backward direction)
palindrome(L):- reverse(L,L).