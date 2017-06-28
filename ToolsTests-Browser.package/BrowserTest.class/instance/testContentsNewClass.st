as yet unclassified
testContentsNewClass
	browser selectSystemCategory: browser class category.

	self assert: (Class template: browser selectedSystemCategory) equals: browser contents.
	
	self flag: #todo. "I don't know how to test the other half of this: see Browser >> #newClassContents".