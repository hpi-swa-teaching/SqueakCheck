testing
testAnIntegerProducesIntegers
	| data |
	data := OrderedCollection new.
	100 timesRepeat: [ | datum |
		datum := Integer dataFrom: generator.
		data add: datum.
		self assert: datum isInteger].
	
	"Test that the data varies, even though we don't know what that variation looks like."
	self assert: (data range > 0)