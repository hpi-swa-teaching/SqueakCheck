running
makeTestData: aCompiledMethod with: aGenerator
	| prototypeClasses|
	
	prototypeClasses := self typeTheory: aCompiledMethod.
	^(prototypeClasses collect: [ :each | (each dataFrom: aGenerator)]) flipSubHierarchy.  