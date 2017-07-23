*SqueakCheck-Integration
addRunSqueakCheckTestMenuItemToClassMenu: aMenu
<classListMenu>
	aMenu addList: #(
		('run all SqueakCheck tests' #runAllSqueakCheckTestsForClass)
	).
	^ aMenu