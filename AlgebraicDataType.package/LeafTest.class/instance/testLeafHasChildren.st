testing
testLeafHasChildren
	self assert: (Leaf value: 1) hasChildren.
	
	self assert: (Leaf value: 1) children = #(1).