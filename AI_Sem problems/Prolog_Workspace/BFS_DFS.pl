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
