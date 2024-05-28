graph(a,b).
graph(a,c).
graph(b,d).
graph(b,e).
graph(c,f).
graph(c,g).
goal(f).
goal(g).
member(X,[X|_]).
member(X,[_|Tail]):-member(X,Tail).
solve0(Node,Solution):-dfs([],Node,Solution).
dfs(Path,Node,[Node|Path]):-goal(Node).
dfs(Path,Node,Solution):-
    graph(Node,Node1),
    not(member(Node1,path)),
    dfs([Node|Path],Node1,Solution).


