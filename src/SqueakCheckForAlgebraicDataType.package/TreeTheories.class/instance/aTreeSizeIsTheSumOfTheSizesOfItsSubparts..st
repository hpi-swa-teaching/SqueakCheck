theories
aTreeSizeIsTheSumOfTheSizesOfItsSubparts: aTree
	<theoryTaking: #Tree>
	| size subpartsSize |
	size := aTree size.
	subpartsSize := aTree unapply first caseOf: {
		[#TreeNode] -> [aTree left size + aTree right size + 1].
		[#Leaf] -> [1].
		[#Empty] -> [0]
	}.
	self assert: subpartsSize equals: size.