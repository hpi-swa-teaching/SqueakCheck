comparing
= anObject
	^ (anObject respondsTo: #unapply)
		ifTrue: [self unapply = anObject unapply]
		ifFalse: [anObject isCollection
			ifTrue: [self unapply = anObject]
			ifFalse: [false]]