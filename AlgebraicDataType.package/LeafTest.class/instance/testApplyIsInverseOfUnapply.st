testing - instance creation
testApplyIsInverseOfUnapply
	| leaf |
	leaf := Leaf value: 1.
	self assert: leaf = (Leaf apply: leaf unapply)