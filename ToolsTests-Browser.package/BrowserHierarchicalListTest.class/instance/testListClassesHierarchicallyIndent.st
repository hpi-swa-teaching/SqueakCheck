tests
testListClassesHierarchicallyIndent

	| result dict  |
	result := self hierarchicalClassListForCategory: 'Tools-Browser'.
	"Create class->indent mapping"
	dict := result inject: Dictionary new into: [:classIndentMapping :className |
		| indent |
		indent := className count: [:char | char = Character space or: [char = Character tab]].
		classIndentMapping at: (self nameToClass: className) put: indent.
		classIndentMapping].
	"assert that indent of class is larger than indent of superclass"
	dict keysAndValuesDo: [:class :myIndent |
		dict at: class superclass ifPresent: [:superIndent |
			self assert: myIndent > superIndent]].