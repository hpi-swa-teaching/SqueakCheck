as yet unclassified
testSelectedClass
	browser selectSystemCategory: browser class category.
	browser classListIndex: 0.
	self assert: browser classListIndex = 0.
	self assert: browser selectedClass isNil.
	
	browser classListIndex: 1.
	self assert: browser classListIndex = 1.
	self assert: browser selectedClass notNil.