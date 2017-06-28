testing - message list
testKeepMethodSelectedWhenChangingClass
	browser selectSystemCategory: SequenceableCollection category.
	browser selectClass: SequenceableCollection.
	browser selectMessageNamed: #add:.
	self assert: browser selectedMessageName = #add:.
	
	"Even though we have no message category selected, stay looking at the #add: method."
	browser selectClass: Collection.
	self assert: browser selectedMessageName = #add:.