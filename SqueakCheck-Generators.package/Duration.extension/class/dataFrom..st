*SqueakCheck-Generators
dataFrom: aDataGenerator
	^ self
		seconds: (aDataGenerator positiveIntegerData)
		nanoSeconds: (aDataGenerator positiveIntegerData).