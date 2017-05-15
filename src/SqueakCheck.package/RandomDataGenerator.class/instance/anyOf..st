generators
anyOf: anArray
	| sample |
	sample := anArray atRandom: rng.
	^ (sample isBehavior
		ifTrue: [sample]
		ifFalse: [sample class]) dataFrom: self.