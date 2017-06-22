private
classesOf: pairsOfMethodNamesAndIsMetas
	^ (self classesUnderstandingAllOf:
		pairsOfMethodNamesAndIsMetas)
			collect: [:desc |
				desc second
					ifTrue: [(Smalltalk at: desc first) class]
					ifFalse: [Smalltalk at: desc first]].