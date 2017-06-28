testing - instance creation
testProperlyFormedListApplies
	| leaf |
	leaf := Leaf apply: {#Leaf. 1}.
	
	self assert: (leaf isKindOf: Leaf).
	self assert: leaf value = 1.