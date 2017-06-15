as yet unclassified
testContentsSelection
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.

	"No category or message selected."
	self assert: browser contentsSelection isEmpty.

	"Category selected, but no message selected."
	browser messageCategoryListIndex: 1.
	browser selectMessageNamed: browser messageList first.
	self assert: browser contentsSelection isEmpty.
	
	"Category and message selected."
	browser selectMessageNamed: nil.
	self deny: browser contentsSelection isEmpty.