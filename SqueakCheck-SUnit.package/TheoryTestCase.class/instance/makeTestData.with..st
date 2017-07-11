running
makeTestData: aCompiledMethod with: aGenerator
	| prototypeClasses testData minLength|

	prototypeClasses := self typeTheory: aCompiledMethod.
	testData := prototypeClasses collect: [ :each | (each dataFrom: aGenerator)].
	minLength := testData inject: (testData first size) into: [ :min :next | min min: next size].
	^ (testData collect: [ :each | each first: minLength]) flipSubHierarchy.