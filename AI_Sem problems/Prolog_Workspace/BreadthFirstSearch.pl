graphstruct(a,b).
graphstruct(a,c).
graphstruct(b,d).
graphstruct(b,e).
graphstruct(c,f).
graphstruct(c,g).
goal(f).
goal(g).
member(X,[X|_]).
member(X,[_|Tail]):-member(X,Tail).
solve1(Start,Solution):-bfs([[Start]],Solution).
bfs([[Node|Path]|_],[Node|Path]):- goal(Node).
bfs([Path|Paths],Solution):- extend(Path,Newpaths),conc(Paths,Newpaths,Paths1),bfs(Paths1,Solution).
extend([Node|Path],Newpaths):-bagof([Newnode,Node|Path],(graphstruct(Node,Newnode),not(member(Newnode,[Node|Path]))),Newpaths),!.
extend(_,[]).
conc([],L2,L2).
conc([X|L1],L2,[X|L3]):-conc(L1,L2,L3).
