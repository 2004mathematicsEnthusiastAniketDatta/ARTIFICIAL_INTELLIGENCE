% Backward loop: Count down from N to 0
backward_loop(N) :-
    (N >= 0 ->
        write(N), nl,
        N1 is N - 1,
        backward_loop(N1)
    ;
        N < 0,
        write('Reached below 0'), nl
    ).

% Forward loop: Count up from Start to Limit
forward_loop(Start, Limit) :-
    (Start =< Limit ->
        write(Start), nl,
        Start1 is Start + 1,
        forward_loop(Start1, Limit)
    ;
        Start > Limit,
        write('Reached the limit'), nl
    ).

% Main program to choose between backward and forward loops
main :-
    write('Enter 1 for backward loop, 2 for forward loop: '), nl,
    read(Choice),
    (
        Choice = 1 ->
            write('Enter the start number for backward loop: '), nl,
            read(N),
            backward_loop(N)
    ;
        Choice = 2 ->
            write('Enter the start and limit numbers for forward loop (as [Start, Limit]): '), nl,
            read([Start, Limit]),
            forward_loop(Start, Limit)
    ;
        write('Invalid choice'), nl,
        main
    ).

% Start the program
:- main.














