*SqueakCheck-Integration
addRunSqueakCheckTestMenuItemToClassMenu: aMenu
<classListMenu>

	self testsForSelectedClass ifEmpty: [^ aMenu].
	
	aMenu addList: #(
		('run all SqueakCheck tests' #runAllSqueakCheckTestsForClass)
	).
	^ aMenu