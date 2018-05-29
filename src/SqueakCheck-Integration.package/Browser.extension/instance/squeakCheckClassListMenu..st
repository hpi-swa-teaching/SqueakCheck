*SqueakCheck-Integration
squeakCheckClassListMenu: aMenu
	<classListMenu>

	(self selectorsOfTestsFor: self selectedClassMethods) ifEmpty: [^ aMenu].
	aMenu addList: #(('run all SqueakCheck tests' runAllSqueakCheckTestsForClass)).
	^ aMenu.