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

	self openMethod: methodFullName.
	self flag: 'TODO: Das hier ist SCHEIßE! Warum öffnet das hier iwelche methoden?! das muss hier iwie ausgelagert werden'.

