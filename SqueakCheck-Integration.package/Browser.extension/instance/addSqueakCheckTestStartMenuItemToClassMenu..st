*SqueakCheck-Integration
addSqueakCheckTestStartMenuItemToClassMenu: aMenu
<classListMenu>
	aMenu addList: #(
		('run all SqueakCheck tests' runAllSqueakCheckTestsForClass)
	).
	^ aMenu