as yet unclassified
testSelectClass
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	self assert: browser hasClassSelected.
	
	browser selectClass: nil.
	self deny: browser hasClassSelected.