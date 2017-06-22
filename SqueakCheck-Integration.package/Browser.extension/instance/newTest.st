*SqueakCheck-Integration
newTest

	self addTestPackageForSelectedClass.
	self classAlreadyExists ifFalse: [self addClass].
	^self addMethodAndCategory.


