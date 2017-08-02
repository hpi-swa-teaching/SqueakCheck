*SqueakCheck-Integration
classNamesSupportingDataFrom

	^ (self environment allClasses select: [:each |
		each class includesSelector: #dataFrom:]) inject: '' into: [:string :next | string,', #',next].