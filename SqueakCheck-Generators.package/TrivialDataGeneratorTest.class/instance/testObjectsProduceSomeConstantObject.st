testing
testObjectsProduceSomeConstantObject
	| o |
	o := Object dataFrom: generator.
	{Object new. Class. Smalltalk.} do: [:each |
		self assert: o equals: (each class dataFrom: generator)].