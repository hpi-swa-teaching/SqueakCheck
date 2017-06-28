as yet unclassified
testSelectClassSelectsClass
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	self assert: browser classListIndex ~= 0.
	self assert: browser selectedClass = browser class.
	self assert: browser selectedClassName = browser class name.