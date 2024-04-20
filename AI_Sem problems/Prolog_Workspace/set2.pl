player(rahulDravid,1996,2012).
player(sachinTendulkar,1989,2013).
player(vvsLaxman,1996,2012).
player(sauravGanguly,1996,2008).
player(virenderSehwag,2001,2013).
whoplayed(Playername,Year):-player(Playername,Startyear,Endyear),Year>=Startyear,Year=<Endyear.
played(Playername,Year):-player(Playername,Startyear,Endyear),Year=:=Startyear.

% Recursive structures

%linear_search with list
search(X,[X|_]).
search(X,[_|T]):-search(X,T).


% Base case: An empty list has length 0.
length([], 0).

% Recursive case: Use an accumulator to compute the length.
length(List, Length) :-
    length(List, 0, Length).

% Helper predicate with an accumulator.
length([], Acc, Acc).
length([_|Tail], Acc, Length) :-
    NewAcc is Acc + 1,
    length(Tail, NewAcc, Length).
	

% concatenate two lists

/* listConcatenate(List1,List2,Result):- append(List1,List2,Result).*/

listConcatenate([],List2,List2).
listConcatenate([Y|List1],List2,[Y|List3]):-listConcatenate(List1,List2,List3).

%delete an element from the list

% Base case: If the list contains only the element X, the result is an empty list.
del(X, [X], []).

% Recursive case: Remove occurrences of X from the list.
del(X, [X|T], T2) :-
    del(X, T, T2).
del(X, [H|T], [H|T2]) :-
    H \= X,
    del(X, T, T2).


% insert an element into the list where position is not specified.

insert(X,Y,[X|Y]).
insert(X,[H|T],[H|T1]):-insert(X,T,T1).

% Prolog program to check whether a list is sorted in increasing order or not.

increasingSorted([]).
increasingSorted([_]).
increasingSorted([X,Y|Rest]):- X=<Y,is_sorted([Y|Rest]).

%sum of all elements in a list.
sumList([X],X).
sumList([H|T],N):- sumList(T,N1),N is N1+H.

%oddeven

evenodd(X,Y):-length(X,Y),Y%2=:=0 :- write("even number of elements");write("odd number of elements").

reverse([X],[X]).
reverse([H|T],[X|H]):- reverse(T,X).




















