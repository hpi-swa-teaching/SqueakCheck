*SqueakCheck-Generators
dataFrom: aDataGenerator

	^ ((aDataGenerator dataCollectionOf: #PositiveInteger) zip: (aDataGenerator dataCollectionOf: #PositiveInteger)) collect: [:each|
		self seconds: each first nanoSeconds: each second].