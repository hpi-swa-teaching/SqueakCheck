*SqueakCheckForAlgebraicDataType
generateLeaf: anInteger
	^ (anInteger > 0)
		ifTrue: [Leaf value: (self integerData)]
		ifFalse: [Tree empty].