*SqueakCheck-Integration
methodFullName 
	|methodFullName offset|

	offset := 0.
	methodFullName := self methodBaseName.
	[self nameTaken: methodFullName, ':'] whileTrue: [
		offset := offset + 1.
		methodFullName := self methodBaseName, offset asString].
	^ methodFullName.

