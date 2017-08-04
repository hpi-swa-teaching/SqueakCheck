generators
anyOf: anArray
	| sample |
	
	sample := anArray atRandom: self rng.
	^ (sample isBehavior
		ifTrue: [sample]
		ifFalse: [sample class]) dataFrom: self.