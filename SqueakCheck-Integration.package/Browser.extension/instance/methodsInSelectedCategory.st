*SqueakCheck-Integration
methodsInSelectedCategory

	self selectedClass ifNil: [^ OrderedCollection new].	
	^ self selectedClass organization listAtCategoryNamed: self selectedMessageCategoryName.