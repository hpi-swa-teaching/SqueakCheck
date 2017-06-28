as yet unclassified
testFileOutMessageCategories
	| fileName |	
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	browser messageCategoryListIndex: 1.
	
	"Handcrafted from ClassDescription>>fileOutCategory:asHtml:"
	fileName := browser selectedClass name, '-', browser selectedMessageCategoryName, FileDirectory dot, 'st'.
	self deny: (FileDirectory default fileExists: fileName).
	
	[browser fileOutMessageCategories.
	self assert: (FileDirectory default fileExists: fileName).
	] ensure: [FileDirectory default deleteFileNamed: fileName].