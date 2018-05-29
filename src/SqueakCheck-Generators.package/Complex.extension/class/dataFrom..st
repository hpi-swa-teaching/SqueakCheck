*SqueakCheck-Generators
dataFrom: aDataGenerator

	^ ((aDataGenerator dataCollectionOf: #Integer) zip: (aDataGenerator dataCollectionOf: #Integer)) collect: [:each |
		self real: each first imaginary: each second].