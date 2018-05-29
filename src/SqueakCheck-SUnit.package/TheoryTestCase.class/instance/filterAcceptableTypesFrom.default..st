typing
filterAcceptableTypesFrom: someClasses default: aClass
	| filtered |
	filtered := someClasses difference: self forbiddenTypes.
	^ filtered
		ifEmpty: [{aClass}]
		ifNotEmpty: [filtered].