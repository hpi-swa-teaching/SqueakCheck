*SqueakCheck-Generators
dataFrom: aDataGenerator

	^ ((aDataGenerator dataCollectionOf: #Integer) zip: (aDataGenerator dataCollectionOf: #Integer)) collect: [:each|
		self newFromNumber: each first scale: each second].