*SqueakCheck-Integration
addClass

	ClassBuilder new
		name: self classNameForTest asSymbol
		inEnvironment: self selectedClass environment
		subclassOf: TheoryTestCase
		type: #normal
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self categoryNameForTest asSymbol.