*SqueakCheck-Integration
addTestClassForSelectedClassIfNotExists

	self testClassForSelectedClass ifNotNil: [^ self].
	
	ClassBuilder new
		name: self testClassNameForSelectedClass asSymbol
		inEnvironment: self selectedClass environment
		subclassOf: TheoryTestCase
		type: #normal
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self categoryNameForTest asSymbol.