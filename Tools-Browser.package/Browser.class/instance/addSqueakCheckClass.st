SWT014-Browsererweiterung
addSqueakCheckClass
|builder|

	builder := ClassBuilder new.
	builder name: (self classNameSqueakCheck asSymbol) inEnvironment: (self selectedClass environment) subclassOf: TheoryTestCase type: #normal instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: (self categoryNameSqueakCheckTest asSymbol).