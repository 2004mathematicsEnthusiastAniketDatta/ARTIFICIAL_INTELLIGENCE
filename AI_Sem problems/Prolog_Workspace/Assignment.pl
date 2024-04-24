%linear search
search(X,[X|_]).
search(X,[_|T]):-search(X,T).

%length of list
list_length([],0).
list_length([_|T],L):-list_length(T,L1),L is L1+1.

%Concatenate two list
list_concatenate([],L2,L2).
list_concatenate([Y|L1],L2,[Y|L3]):- list_concatenate(L1,L2,L3).

%delete element given
del(X,[X],[]).
del(X,[X|T],T).
del(X,[H|T],[H|T1]):-del(X,T,T1).


% Base case: Inserting an element at position 1 results in a new list.
insert_at(Element, List, 1, [Element | List]).

% Recursive case: Insert the element at the specified position.
insert_at(Element, [Head | Tail], Position, Result):-
    Position > 1,
    NewPosition is Position - 1,
    insert_at(Element, Tail, NewPosition, TempResult),
    Result = [Head | TempResult].

%prolog program to check whether a list is sorted in increasing order.
is_sorted([]).
is_sorted([_]).
is_sorted([X,Y|T]):-X=<Y,is_sorted([Y|T]).

%sum of elements in a list
sum_List([X],X).
sum_List([H|T],Sum):-sum_List(T,Res),Sum is Res+H.

%odd number length of list

% Base case: An empty list has length 0 (which is even).
length_even_odd([], even) :- write('The list has an even length (0).').

% Recursive case: The length is odd if the tail has an even length.
length_even_odd([_|Tail], odd) :-
    length_even_odd(Tail, even),
    length(Tail, TailLength),
    Length is 1 + TailLength,
    write('The list has an odd length ('),
    write(Length),
    write(').').

% Recursive case: The length is even if the tail has an odd length.
length_even_odd([_|Tail], even) :-
    length_even_odd(Tail, odd),
    length(Tail, TailLength),
    Length is 1 + TailLength,
    write('The list has an even length ('),
    write(Length),
    write(').').

reverse(X,X).
reverse([H|T],[X|H]):-
    reverse(T,X).

% Base case: Shifting an empty list results in an empty list.
shift([], []).

% Recursive case: Shift the list to the left by one element.
shift([Head | Tail], Result) :-
    append(Tail, [Head], Result).


% Base case: Move the top disk from source to target.
move(1, Source, Target, _) :-
    write('Move top disk from '),nl,
    write(Source),nl,
    write(' to '),nl,
    write(Target),
    nl.

% Recursive case: Move N disks from source to target using auxiliary.
move(N, Source, Target, Auxiliary) :-
    N > 1,
    M is N - 1,nl,
    move(M, Source, Auxiliary, Target),nl,
    move(1, Source, Target, _),nl,
    move(M, Auxiliary, Target, Source).



%Depth First Search

graph(a,b).
graph(a,c).
graph(b,d).
graph(b,e).
graph(c,f).
graph(c,g).

%defining facts for goals

goal(f).
goal(g).


%membership status

member(X,[X|_]).
member(X,[_|T]):-member(X,T).

% predicate to call from console % solution is a path(in reverse order) from start to a goal.

solve(Node,Solution):- dfs([],Node,Solution).

%predicate implementation

dfs(Path,Node,Sol):-
    graph(Node,Node1),
    not(member(Node1,Path)),
    dfs([Node|Path],Node1,Sol).


%Bradth first Search:

%Facts
graphstruct(a,b).
graphstruct(a,c).
graphstruct(b,d).
graphstruct(b,e).
graphstruct(c,f).
graphstruct(c,g).

%defining facts for goals
goals(f).
goals(g).

%predicate to call from console
%Solution is a path(in reverse order)
%from Start to a goal
solve1(Start,Solution):-
    bfs([[Start]],Solution).

%bfs predicate implementation
%Always first check if Goal is reached.

bfs([Path|Paths],Solution):-
    extend(Path,NewPaths),conc(Paths,NewPaths,Paths1),bfs(Paths1,Solution).






extend([Node|Path],NewPaths):-
    bagof([NewNode,Node|Path],(graph(Node,NewNode),not(member(NewNode,[Node|Path]))),NewPaths),!.
extend(_,[]).

conc([],L2,L2).
conc([X|L1],L2,[X|L3]):-conc(L1,L2,L3).

















