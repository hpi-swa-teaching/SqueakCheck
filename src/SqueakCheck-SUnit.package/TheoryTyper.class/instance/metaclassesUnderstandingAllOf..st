typing
metaclassesUnderstandingAllOf: someMessageNames
	| seq |
	someMessageNames ifEmpty: [^ #()].
	
	seq := someMessageNames asArray.
	^ seq allButFirst
		inject: (self metaclassesUnderstanding: seq first)
		into: [:acc :imps | acc intersection: (self metaclassesUnderstanding: imps)]