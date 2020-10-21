from pyswip import Prolog, registerForeign


prolog = Prolog()
prolog.consult("solver2.pl")
prolog.consult("problem.pl")


class ScoreFunction():

    def __init__(self):
        self.i = 0
        self.arity = 2
        self.__name__ = 'foreign_score'

    def __call__(self, goal, res):
        print(goal)
        res.unify(self.i)
        self.i -= 1
        return True


foreign_score = ScoreFunction()
registerForeign(foreign_score)
query = 'solve(path(a,e), P)'

for l in prolog.query(query):
    print(l)