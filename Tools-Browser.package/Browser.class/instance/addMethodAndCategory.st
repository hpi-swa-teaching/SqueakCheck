SWT014-SqueakCheck
addMethodAndCategory
	|methodFullName offset|

	offset := 0.

	methodFullName := self methodBaseName.
	[self nameTaken: (methodFullName, ':')] whileTrue: [
		offset := offset + 1.
		methodFullName := self methodBaseName, offset asString].

	self classWithTestsForSelectedClass
		compile: (self newMethodContent: methodFullName)
		classified: 'squeakCheckTests'
		notifying: nil.

	^ methodFullName.

