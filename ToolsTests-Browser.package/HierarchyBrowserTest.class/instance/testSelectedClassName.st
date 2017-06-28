as yet unclassified
testSelectedClassName
	browser initHierarchyForClass: browser class.
	self assert: browser selectedClassName = browser class name.
	
	browser classListIndex: 0.
	self assert: browser selectedClassName isNil.