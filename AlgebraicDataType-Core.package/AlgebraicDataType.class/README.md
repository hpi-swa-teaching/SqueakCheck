My subclasses represent algebraic types. My subclasses know how to destructure themselves through implementing #unapply.

Further, for unification between two graphs of instances of my subclasses, you may think of the instances as functions. For instance, Node left: a right: b is conceptually the same as some function Node(left, right) taking Trees as parameters. Thus, you may access a structure's parts through a parameter-like API in #paramAt:, #numArgs, etc.