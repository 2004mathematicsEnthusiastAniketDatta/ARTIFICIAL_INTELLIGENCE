toh(1,X,Y,_):-
              write('Move top disk from'),
              write(X),
              write('to'),
              write(Y),
              nl.
toh(N,X,Y,Z):-
               N>1, M is N-1,
			   toh(M,X,Z,Y),nl,
			   toh(1,X,Y,_),nl,
			   toh(M,Z,Y,X),nl.
			   
			  
