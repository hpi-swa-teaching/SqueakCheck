*SqueakCheck-Integration
selectedClassMethods
	
	^ self selectedClass
		ifNotNil: [self selectedClass selectors] 
		ifNil: [{}].