private
constructorFor: selector
	| tokens interleavedNames |
	selector numArgs = 0 ifTrue: [Error signal: 'Selector must have arity > 0'].
	tokens := selector allButLast splitBy: #:.
	interleavedNames := (tokens collect: [:each | each, ': ', each]) reduce: [:acc :each | acc, ' ', each].
	^ interleavedNames, Character cr,
		'	^ self new ', interleavedNames, '.'