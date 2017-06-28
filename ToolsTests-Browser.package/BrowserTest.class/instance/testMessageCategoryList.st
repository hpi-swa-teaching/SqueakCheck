as yet unclassified
testMessageCategoryList
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	
	self assert: browser messageCategoryList = ({ClassOrganizer allCategory}, browser class organization categories).
	
	browser selectClass: nil.
	self assert: browser messageCategoryList = #().
	
	browser selectClass: browser class.
	browser metaClassIndicated: true.
	self assert: browser messageCategoryList = ({ClassOrganizer allCategory}, browser class classSide organization categories).