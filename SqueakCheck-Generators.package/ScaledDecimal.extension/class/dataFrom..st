*SqueakCheck-Generators
dataFrom: aDataGenerator

	^ ((aDataGenerator integerData) zip: (aDataGenerator integerData)) collect: [:each|
		self newFromNumber: each first scale: each second].