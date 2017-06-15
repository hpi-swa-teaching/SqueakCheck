as yet unclassified
testHasMessageSelected
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	browser messageCategoryListIndex: 1.
	
	self deny: browser hasMessageSelected.
	
	browser messageListIndex: 0.
	self deny: browser hasMessageSelected.
	
	browser messageListIndex: 1.
	self assert: browser hasMessageSelected.
	
	browser messageListIndex: 0.
	self deny: browser hasMessageSelected.