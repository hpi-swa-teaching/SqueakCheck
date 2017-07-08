*SqueakCheck-Generators
dataFrom: aDataGenerator

	^ ((aDataGenerator dataCollectionOf: #positiveIntegerData) zip: (aDataGenerator dataCollectionOf: #positiveIntegerData)) collect: [:each|
		self seconds: each first nanoSeconds: each second].