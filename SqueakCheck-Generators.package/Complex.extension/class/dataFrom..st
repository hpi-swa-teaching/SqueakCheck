*SqueakCheck-Generators
dataFrom: aDataGenerator

	^ ((aDataGenerator dataCollectionOf: #integerData) zip: (aDataGenerator dataCollectionOf: #integerData)) collect: [:each|
		self real: each first imaginary: each second].