running
makeTestData: aCompiledMethod with: aGenerator
	| prototypeClass|
	
	prototypeClass := self typeTheory: aCompiledMethod.
	^(prototypeClass dataFrom: aGenerator) flipSubHierarchy 