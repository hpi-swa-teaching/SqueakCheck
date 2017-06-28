typing
makeTestData: aCompiledMethod
	| prototypeClass |
	prototypeClass := self typeTheory: aCompiledMethod.
	^(1 to: aCompiledMethod numArgs)
		collect: [:unused | prototypeClass dataFrom: generator].