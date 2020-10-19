edge(a, c).
edge(a, d).
edge(d, c).
edge(a, b).
edge(b, e).
edge(c, e).
edge(a, e).

path(X, Y) :- edge(X, Y).
path(X, Y) :- edge(X, Z), path(Z, Y).

