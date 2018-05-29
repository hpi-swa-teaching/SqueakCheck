testing - instance creation
testInitialiserForHighAritySelectorInitialisesAllInstVars
	| src |
	src := 'foo: aFoo bar: aBar baz: aBaz
	foo := aFoo.
	bar := aBar.
	baz := aBaz.'.
	self assert: (AlgebraicDataType initialiserFor: #foo:bar:baz:) = src.