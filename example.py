from pyswip import Prolog



prolog = Prolog()
prolog.consult("solver.pl")
prolog.consult("problem.pl")



for l in prolog.query('solve(path(a,Z), P)'):
    print(l)