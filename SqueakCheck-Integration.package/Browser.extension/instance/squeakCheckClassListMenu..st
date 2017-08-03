*SqueakCheck-Integration
squeakCheckClassListMenu: aMenu
	<classListMenu>

	self selectorsOfTestsForSelectedClass ifEmpty: [^ aMenu].
	aMenu addList: #(('run all SqueakCheck tests' runAllSqueakCheckTestsForClass)).
	^ aMenu.