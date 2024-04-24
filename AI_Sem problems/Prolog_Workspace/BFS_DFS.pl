%Depth First Search

%Facts:

graph(a,b).
graph(a,c).
graph(b,d).
graph(b,e).
graph(c,f).
graph(c,g).

%goals:
goal(f).
goal(g).

%membership_check:
member(X,[X|_]).
member(X,[_|Tail]):-member(X,Tail).

%predicate to call from console
%Solution is a path (in reverse order)
%from start to goal.
solve(Node,Solution):-dfs([],Node,Solution).

%dfs predicate
dfs(Path,Node,[Node|Path]):- goal(Node).

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
%Always first check if goal is reached
bfs([[Node|Path]|_],[Node|Path]):-
    goal(Node).
% if not , extend the path by all possible edges,put these new paths on
% the end of the queue (Paths1) to check , and do %breadthfirst Search
% on this new collection of %Paths,Paths1.
bfs([Path|Paths],Solution):-
    extend(Path,NewPaths),conc(Paths,NewPaths,Paths1),bfs(Paths1,Solution).

extend([Node|Path],NewPaths):-
    bagof([NewNode,Node|Path],
         (graph(Node,NewNode),
         not(member(NewNode,[Node|Path]))),
         NewPaths),
    !.

extend(_,[]).
conc([],L2,L2).
conc([X|L1],L2,[X|L3]):-conc(L1,L2,L3).


















