as yet unclassified
testSelectClass
	browser initHierarchyForClass: browser class.
	browser selectClass: ProtoObject.
	self assert: browser selectedClass = ProtoObject.
	
	browser selectClass: CodeHolder.
	self assert: browser selectedClass = CodeHolder.