solve(true, true) :-!.
solve((A, B),(ProofA, ProofB)) :- !, solve(A, ProofA), solve(B, ProofB).
solve(A, proofOf(A,ProofB)) :-
        (   predicate_property(A, built_in) ->
            call(A), ProofB = built_in
        ;   !, clause(A, B), solve(B, ProofB)
        ).

