*SqueakCheck-Integration
addMethodInMessageCategory
	| methodFullName |
	
	methodFullName := self methodFullName.
	self classWithTestsForSelectedClass
		compile: (self newMethodContent: methodFullName)
		classified: self squeakCheckTestsMessageCategory.
	^ methodFullName.

