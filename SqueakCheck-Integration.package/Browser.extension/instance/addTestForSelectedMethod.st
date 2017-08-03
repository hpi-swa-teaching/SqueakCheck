*SqueakCheck-Integration
addTestForSelectedMethod

	self addTestPackageForSelectedClass.
	self addTestClassForSelectedClassIfNotExists.
	^ self addMethodInMessageCategory.


