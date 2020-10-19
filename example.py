from pyswip import Prolog
from proof_parser import Parser



proof_parser = Parser()
prolog = Prolog()
prolog.consult("solver.pl")
prolog.consult("problem.pl")





for l in prolog.query('solve(path(a,Z), P)'):
    print(l)
    p = proof_parser.parse(l['P'])
    print(p)