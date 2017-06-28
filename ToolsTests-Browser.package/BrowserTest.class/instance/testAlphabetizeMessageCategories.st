as yet unclassified
testAlphabetizeMessageCategories
	browser selectSystemCategory: browser class category.
	self deny: browser alphabetizeMessageCategories.
	
	browser selectClass: browser class.
	browser metaClassIndicated: false.
	self assert: browser alphabetizeMessageCategories.
	self assert: browser classOrMetaClassOrganizer categories isSorted.
	
	browser metaClassIndicated: true.
	self assert: browser alphabetizeMessageCategories.
	self assert: browser classOrMetaClassOrganizer categories isSorted.