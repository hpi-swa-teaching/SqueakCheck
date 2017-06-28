as yet unclassified
testSelectClassNamed
	browser selectSystemCategory: browser class category.
	browser selectClassNamed: browser class name.
	self assert: browser selectedClassName = browser class name.
	
	browser selectClassNamed: nil.
	self assert: browser selectedClassName isNil.
	
	browser selectClassNamed: browser class name asString.
	self assert: browser selectedClassName = browser class name.