private
initialiserFor: selector
	| tokens names |
	selector numArgs = 0 ifTrue: [Error signal: 'Selector must have arity > 0'].
	
	tokens := selector allButLast splitBy: #:.
	names := tokens collect: [:each | each -> ('a', each capitalized)].

	^ ({(names collect: [:each | each key asString, ': ', each value]) join: ' '} ,
		(names collect: [:each | ('	{1} := {2}.' format: {each key. each value.})]))
			join: Character cr.