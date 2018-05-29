*SqueakCheckForAlgebraicDataType
generateLeaf: anInteger

	^ anInteger > 0
		ifTrue: [Leaf value: (self rng nextInt: 100)]
		ifFalse: [Tree empty].