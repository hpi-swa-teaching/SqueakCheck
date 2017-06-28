typing
classesUnderstandingAllOf: someMessageNames
	| seq |
	someMessageNames ifEmpty: [^ #()].
	
	seq := someMessageNames asArray.
	^ seq allButFirst
		inject: (self classesUnderstanding: seq first)
		into: [:acc :imps | acc intersection: (self classesUnderstanding: imps)]