as yet unclassified
testSelectedMessageCategoryName
	browser searchString: 'cull'.
	browser selectorListIndex: 1.
	browser messageListIndex: 1.
	self deny: browser selectedMessageCategoryName isNil.

	browser messageListIndex: 0.
	self assert: browser selectedMessageCategoryName isNil.