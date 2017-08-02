*SqueakCheck-Integration
methodsInSelectedCategory

	^ self selectedClass
		ifNil: [OrderedCollection new]
		ifNotNil: [self selectedClass organization listAtCategoryNamed: self selectedMessageCategoryName].