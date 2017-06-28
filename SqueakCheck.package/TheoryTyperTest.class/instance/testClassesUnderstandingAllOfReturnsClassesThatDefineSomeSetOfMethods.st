testing
testClassesUnderstandingAllOfReturnsClassesThatDefineSomeSetOfMethods
	| set |
	set := TheoryTyper new classesUnderstandingAllOf: #(#> #<).
	set do: [:each | | cls |
		cls := Smalltalk at: each first ifAbsent: [nil].
		self deny: cls isNil.
		self assert: (cls canUnderstand: #>).
		self assert: (cls canUnderstand: #<)].