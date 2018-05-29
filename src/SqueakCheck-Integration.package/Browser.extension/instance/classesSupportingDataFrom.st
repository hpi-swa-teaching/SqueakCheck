*SqueakCheck-Integration
classesSupportingDataFrom

	^ self environment allClasses select: [:each |
		each class includesSelector: #dataFrom:]. 