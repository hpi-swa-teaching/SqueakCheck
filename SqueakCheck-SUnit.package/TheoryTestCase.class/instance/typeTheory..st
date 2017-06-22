typing
typeTheory: aCompiledMethod
	"If the theory uses the <theory> pragma, treat that as <theoryTaking: #Object>. Otherwise, the symbol given in the pragma gives the name of the class used to determine which generator to use."
	| prototypeClassName pragma |
	pragma := aCompiledMethod pragmaAt: #theoryTaking:.
	pragma ifNil:
		[^ (self filterAcceptableTypesFrom:
			(TheoryTyper new typeOfDatum: aCompiledMethod) default: Object) anyOne].

	prototypeClassName := pragma arguments first.
	^ self class environment
		at: prototypeClassName
		ifAbsent: [MissingPrototypeException signal: prototypeClassName].