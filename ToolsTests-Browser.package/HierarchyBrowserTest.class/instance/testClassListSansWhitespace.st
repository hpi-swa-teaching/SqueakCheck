as yet unclassified
testClassListSansWhitespace
	| c displayedClasses hierarchy |
	browser initHierarchyForClass: browser class.
	
	c := browser class theNonMetaClass.
	displayedClasses := browser classList collect: [:each | each withoutLeadingBlanks ].
	hierarchy := (c allSuperclasses reversed, {browser class}, c allSubclasses) collect: [ :each | each name ].
	self assert: displayedClasses = hierarchy.