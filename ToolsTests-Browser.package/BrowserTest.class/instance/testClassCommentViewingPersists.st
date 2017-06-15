as yet unclassified
testClassCommentViewingPersists
	browser selectSystemCategory: browser class category.
	self assert: browser classList size > 1 description: 'We use the first TWO classes in the category!'.
	browser classListIndex: 1.
	browser metaClassIndicated: false.
	browser editComment.
	
	browser classListIndex: 2.
	self assert: browser editSelection = #editComment.