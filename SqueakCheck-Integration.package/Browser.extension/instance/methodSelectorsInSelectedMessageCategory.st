*SqueakCheck-Integration
methodSelectorsInSelectedMessageCategory

	^ self selectedClass
		ifNil: [OrderedCollection new]
		ifNotNil: [self selectedClass organization listAtCategoryNamed: self selectedMessageCategoryName].