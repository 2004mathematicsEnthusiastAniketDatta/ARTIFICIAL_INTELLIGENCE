player(rahulDravid,1996,2012).
player(sachinTendulkar,1989,2013).
player(vvsLaxman,1996,2012).
player(sauravGanguly,1996,2008).
player(virenderSehwag,2001,2013).
whoplayed(Playername,Year):-player(Playername,Startyear,Endyear),Year>=Startyear,Year=<Endyear.
played(Playername,Year):-player(Playername,Startyear,Endyear),Year=:=Startyear.

checkTrigonometricOperations(AngleDegrees):-
AngleRadians is pi * AngleDegrees/180.
Sinvalue is sin(AngleRadians).
Cosinevalue is cos(AngleRadians).
format('SIN(~W radians)= (~w radians) ~n',[AngleRadians,Sinvalue]).
format('COS(~W radians)= (~w radians)~n',[AngleRadians,Cosvalue]).

res1(X):- Res is sin(X),write(Res).
res2(X):-Res is cos(X),write(Res).
res3(X):-Res is X ** 3 ,write(Res).

% this program depicts family relationships...
/* domains 
   name=symbol
   predicates
   parent(name,name). name is atom object
   female(name).
   male(name).
   mother(name,name).
   father(name,name).
   haschild(name,name).
   sister(name,name).
   brother(name,name).
   clause
   */
   female(pam).
   female(liz).
   female(pat).
   female(ann).
   
   male(jim).
   male(bob).
   male(tom).
   male(peter).
   
   parent(pam,bob).
   parent(tom,bob).
   parent(tom,liz).
   parent(bob,ann).
   parent(bob,peter).
   parent(peter,jim).
   /* % rule (if) :- fact,(and)fact ;(or) fact */
   mother(X,Y):- parent(X,Y),female(X).
   father(X,Y):- parent(X,Y),male(X).
   haschild(X):-parent(X,_).
   sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),X\==Y.
   brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),X\==Y.
   
   
   