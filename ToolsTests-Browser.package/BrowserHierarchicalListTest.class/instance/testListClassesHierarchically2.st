tests
testListClassesHierarchically2

	| result classes category |
	category := 'Tools-Browser'.
	result := self hierarchicalClassListForCategory: category.
	self assert: (SystemOrganization listAtCategoryNamed: category) size equals: result size.
	classes := result collect: [:ea | self nameToClass: ea].
	classes withIndexDo: [:ea : i |
		classes 
			from: 1 to: i
			do: [:other | self assertCorrectOrderOf: other followedBy: ea in: classes]].