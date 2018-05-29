*SqueakCheck-Integration
addMethodInMessageCategory
	| methodFullName |
	
	methodFullName := self methodFullName.
	self testClassForSelectedClass
		compile: (self newMethodContent: methodFullName)
		classified: self squeakCheckTestsMessageCategory.
	^ methodFullName.

