typing
typeTheory: aCompiledMethod
	"If the theory uses the <theory> pragma, treat that as <theoryTaking: #Object>. Otherwise, the symbol given in the pragma gives the name of the class used to determine which generator to use."
	| prototypeClassNames pragma prototypeClasses |
	pragma := aCompiledMethod pragmaAt: #theoryTaking:.
	pragma ifNil: [^((1 to: testSelector numArgs) collect: [:unused | self acceptableTypesFor: aCompiledMethod])].

	prototypeClassNames := pragma arguments first.
	(prototypeClassNames isKindOf: Array) ifFalse: [prototypeClassNames := {prototypeClassNames}].
	
	prototypeClasses := prototypeClassNames collect: [ :each | self class environment at: each ifAbsent: [MissingPrototypeException signal: each]].
	
	prototypeClasses size = 1 ifTrue: [prototypeClasses := ((1 to: testSelector numArgs) collect: [ :unused | prototypeClasses first])].
	
	testSelector numArgs ~= prototypeClasses size ifTrue: [MissingPrototypeException signal: ('expected 1 or ',testSelector numArgs,' arguments for #theoryTaking:, but received ',prototypeClassNames size)].
	
	^ prototypeClasses