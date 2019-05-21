tests
testObjectsProduceSomeConstantObject
	| trivialObjectData |
	
	trivialObjectData := Object dataFrom: generator.
	({Object new. Class. Smalltalk.} collect: [:each |
		trivialObjectData zip: (each class dataFrom: generator)]) do: [:each |
			self assert: each first class = each second class].