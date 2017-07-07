*SqueakCheck-Generators
dataFrom: aDataGenerator

	^ ((aDataGenerator integerData) zip: (aDataGenerator integerData)) collect: [:each|
		self real: each first imaginary: each second].