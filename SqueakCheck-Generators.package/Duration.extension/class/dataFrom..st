*SqueakCheck-Generators
dataFrom: aDataGenerator

	^ ((aDataGenerator positiveIntegerData) zip: (aDataGenerator positiveIntegerData)) collect: [:each|
		self seconds: each first nanoSeconds: each second].