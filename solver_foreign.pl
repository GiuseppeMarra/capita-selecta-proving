ziptwo(A,B,A-B).

customize(Pred) :-
    copy_term(Pred,QueryPred),
    findall(QueryPred,QueryPred,AllSols),
    maplist(foreign_score, AllSols, Scores),
    maplist(ziptwo,Scores,AllSols,KeyValueList),
    keysort(KeyValueList, SortedKeyValueList),
    maplist(ziptwo,_,SortedValueList,SortedKeyValueList),
    !,
    member(Pred,SortedValueList).

solve(true, true) :-!.
solve((A, B),(ProofA, ProofB)) :- !, solve(A, ProofA), solve(B, ProofB).
solve(A, proofOf(A,ProofB)) :-
        (   predicate_property(A, built_in) ->
            call(A), ProofB = built_in
        ;   !, customize(clause(A, B)), solve(B, ProofB)
        ).
