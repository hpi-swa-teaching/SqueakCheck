testing
hasChildren
	"Return true if self contains substructures/is of the form f(x1, x2, ..., xn)."
	"This covers most bases, but see MetaVariable for an exception."
	^ self children isEmpty not.