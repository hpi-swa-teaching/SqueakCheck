SWT014-SqueakCheck
addSqueakCheckTestStartMenuItemToClassMenu: aMenu
<classListMenu>
	aMenu addList: #(
		('run all SqueakCheck tests' runAllSqueakCheckTestsForClass)
	).
	^ aMenu