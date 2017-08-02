*SqueakCheck-Integration
addTestForSelectedMethod

	self addTestPackageForSelectedClass.
	self addTestClassForSelectedClassIfNotExists.
	^ self addMethodInCategory.


