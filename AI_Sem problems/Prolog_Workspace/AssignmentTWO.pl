floop(Start,Number):-
    Start=<Number , write(Start),nl,Res is Start + 1,
    floop(Res,Number);
    start =:= Number -> write(Number)
bloop(Srart,Number):-

