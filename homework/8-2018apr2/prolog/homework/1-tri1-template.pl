tri1(tm(... your definition of tri1 ...)).

test_tri1 :- tri1(Tm),
             run(Tm, [1, 1, 1]),
             resultsInRange(Tm, 0, 6).
