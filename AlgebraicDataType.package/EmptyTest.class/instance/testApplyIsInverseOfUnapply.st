testing - instance creation
testApplyIsInverseOfUnapply
	| e |
	e := Empty new.
	self assert: e = (Empty apply: e unapply)