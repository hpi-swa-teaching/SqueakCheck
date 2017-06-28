*SqueakCheck-Integration
addSqueakCheckTestStartMenuItemToCategoryMenu: aMenu
<messageCategoryMenu>
	aMenu addList: #(
		('run all SqueakCheck tests' runAllSqueakCheckTestsForMethodCategory)
	).
	^ aMenu
