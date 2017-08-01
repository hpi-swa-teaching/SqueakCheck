*SqueakCheck-Integration
addMethodInCategory
	| methodFullName testtmp |
	
	methodFullName := self methodFullName.
	testtmp:=self classWithTestsForSelectedClass
		compile: (self newMethodContent: methodFullName)
		classified: 'squeakCheckTests'.
	^ methodFullName.

