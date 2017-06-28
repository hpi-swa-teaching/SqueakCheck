testing - instance creation
testProperListApplies
	| node |
	node := TreeNode apply: {#TreeNode. {#Empty}. {#Leaf. 1.}}.
	self assert: (node isKindOf: TreeNode).
	self assert: (node left isKindOf: Empty).
	self assert: node right value = 1.