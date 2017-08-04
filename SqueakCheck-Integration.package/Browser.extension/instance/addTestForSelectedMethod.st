*SqueakCheck-Integration
addTestForSelectedMethod

	^ self
		addTestPackageForSelectedClass;
		addTestClassForSelectedClassIfNotExists;
		addMethodInMessageCategory.


