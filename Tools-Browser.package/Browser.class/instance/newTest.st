SWT014-SqueakCheck
newTest

	self addTestPackageForSelectedClass.
	self classAlreadyExists ifFalse: [self addClass].
	self addMethodAndCategory.


