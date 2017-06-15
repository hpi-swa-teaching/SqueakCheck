as yet unclassified
testSelectClassNamedPreservesPlace
	| commonCategory commonSelector otherClass |
	browser selectSystemCategory: browser class category.
	otherClass := HierarchyBrowser. "Unlikely to move out of Browser's package!"
	browser selectClassNamed: browser class name.
	
	commonCategory := (browser class organization categories intersection: otherClass organization categories) detect: [ :each | each == #'class list' ].
	commonSelector := #classList.
	browser selectMessageCategoryNamed: commonCategory.
	browser selectMessageNamed: commonSelector.

	browser selectClass: otherClass.
	
	self assert: browser selectedClassName = otherClass name.
	self assert: browser selectedMessageCategoryName = commonCategory.
	self assert: browser selectedMessageName = commonSelector.