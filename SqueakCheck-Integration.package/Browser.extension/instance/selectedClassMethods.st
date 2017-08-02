*SqueakCheck-Integration
selectedClassMethods
	
	^ self selectedClass ifNotNil: [self selectedClass methodDict keys] 
		ifNil: [{}].