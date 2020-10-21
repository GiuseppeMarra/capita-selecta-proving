# Capita Selecta Topic 2: Neurally guided Theorem Proving


You are required to design a strategy to use a neural network to _improve_ and _modify_ the standard (top-dow, left-right) proving procedure of Prolog. The nature of this improvement is mainly up to you. This is a research problem; there is no correct answer and no unique solution. You are allowed to make any kind of assumption to narrow the problem and to define a specific research question, which you will answer. 

Theorem proving is about providing a proof to a query. Training neural networks is about providing examples for the training. So, you are free to define the amount of information you are provided with. For example, you are allowed to precompute the entire set of proofs in advance, and, thus, you may know in advance which are good proofs and which are not. However, any assumption you make should be motivated and its impact discussed.

Finally, you are allowed to define the program(s) you are going to approximate. A path-finding problem is provided to you as an example (also because of the connection with many reinforcement learning applications or heuristic search applications to path-finding).

In this repository, you are provided with some starting points for your project. It is *NOT* mandatory to use this material, which is intended anyway to give you just hints.
 
There are few  requirements:
- For ease of integration with deep learning frameworks, the interface is in Python. You may find an introduction to how to setup a minimal python environment here (https://packaging.python.org/guides/installing-using-pip-and-virtual-environments/) 
- A SWI-Prolog distribution (https://www.swi-prolog.org/)
- PySWIP, a python interface to SWI-Prolog (https://github.com/yuce/pyswip)

You are provided with:
- A `problem.pl` file, which contains a minimal example of a path finding problem. If you choose to use this example in your experiments, you are required to extend (in size) the problem to show the effectiveness of the approximation.
- A `solver.pl` which contains a minimal _meta-interpreter_. Meta-interpreters are an important ingredient of this project, because they provide us a way to interact with the proving procedure of Prolog. For example, in the provided `solver.pl`, the proving procedure is extended to provide also a proof of the query. The script `example.py` shows you how to interact with the program and the solver in Python using pySWIP.
- The `solver2.pl` program extends `solver.pl` and shows you how to interact with the priority of the search using a foreign Python function. This shows you how to provide information of the Prolog proving procedure to a Python function, where the interaction with deep learning frameworks is easy. The script `example_foreign.py` shows how to register the Python function. The actual foreign scoring function is a dummy function which simply reverses the order of the proving (i.e. bottom-up, right-left).

The basic idea of the project is to modify the meta-interpreter to collect more information of the proving procedure (right now you have access to the entire proof, only after the proof has been already found) and to use this information in the python script to train and use a neural network.




 
 
 

