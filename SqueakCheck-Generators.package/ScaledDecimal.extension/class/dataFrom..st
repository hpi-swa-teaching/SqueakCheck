*SqueakCheck-Generators
dataFrom: aDataGenerator

	^ ((aDataGenerator dataCollectionOf: #integerData) zip: (aDataGenerator dataCollectionOf: #integerData)) collect: [:each|
		self newFromNumber: each first scale: each second].