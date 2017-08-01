*SqueakCheck-Integration
addMenuItemsToClassListMenu: aMenu
	<classListMenu>
	
	aMenu addList: #(('run all SqueakCheck tests' runAllSqueakCheckTestsForClass)).
	^ aMenu.