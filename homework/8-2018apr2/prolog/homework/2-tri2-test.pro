tri2(tm(... your definition of tri2 ...)).

test_tri2 :-
    tri2(Tm),
    run(Tm, [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]), 
    run(Tm, [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]), 
    acceptsInRange(Tm, 0, 21).
