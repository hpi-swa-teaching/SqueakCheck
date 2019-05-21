tests
testAnIntegerProducesIntegers
	| data |
	
	data := Integer dataFrom: generator.
	self assert: (data allSatisfy: [:each | each isInteger]).
	"Test that the data varies, even though we don't know what that variation looks like."
	self assert: (data range > 0).