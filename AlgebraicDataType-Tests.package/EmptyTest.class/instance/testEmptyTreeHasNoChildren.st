testing
testEmptyTreeHasNoChildren
	self deny: Empty new hasChildren.
	self deny: Tree empty hasChildren.
	
	self assert: Tree empty children isEmpty.