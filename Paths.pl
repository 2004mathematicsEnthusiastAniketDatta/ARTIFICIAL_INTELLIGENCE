% Define edges in the graph. Each edge/2 fact represents a directed edge from the first node to the second.
edge(1,2).
edge(1,6).
edge(2,3).
edge(2,5).
edge(2,6).
edge(3,4).
edge(3,5).
edge(4,5).
edge(5,6).

% Define a rule for connected nodes. Two nodes X and Y are connected if there's an edge from X to Y or from Y to X.
connected(X,Y):-edge(X,Y);edge(Y,X).

% Define a rule for finding a path from node A to node B. It calls the traverse predicate to find the path, then reverses it to get the correct order.
path(A,B,Path):-traverse(A,B,[A],Q),reverse(Q,Path).

% Base case for the recursion in traverse. If node A is connected to node B, it adds B to the path.
traverse(A,B,P,[B|P]):-connected(A,B).

% Recursive case for traverse. If node A is connected to a node C that is not B and not already visited, it adds C to the visited list and continues the traversal from C.
traverse(A,B,Visited,Path):-
    connected(A,C),  % Check if A is connected to C
    C\==B,           % Ensure that C is not the destination node B
    not(member(C,Visited)),  % Ensure that C has not been visited before
    traverse(C,B,[C|Visited],Path).  % Continue the traversal from node C


