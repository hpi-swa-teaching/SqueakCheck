*SqueakCheck-Integration
addMethodAndCategory

	self classWithTestsForSelectedClass
		compile: (self newMethodContent: self methodFullName)
		classified: 'squeakCheckTests'
		notifying: nil.
	^ self methodFullName.

