running
makeTestData: aCompiledMethod with: aGenerator
	| testData |
 
	testData := (self typeTheory: aCompiledMethod) collect: [:each | (each dataFrom: aGenerator)].
	^ (testData collect: [:each | each first: testData minSubLength]) flipSubHierarchy.