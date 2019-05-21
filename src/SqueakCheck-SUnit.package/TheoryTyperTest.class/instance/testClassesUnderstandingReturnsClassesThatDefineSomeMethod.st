tests
testClassesUnderstandingReturnsClassesThatDefineSomeMethod
	| set |
	set := TheoryTyper new classesUnderstanding: #>.
	set do: [:each | | cls |
		cls := Smalltalk at: each first ifAbsent: [nil].
		self deny: cls isNil.
		self assert: (cls canUnderstand: #>)].