*SqueakCheck-Integration
addRunSqueakCheckTestMenuItemToCategoryMenu: aMenu
<messageCategoryMenu>
	aMenu addList: #(
		('run all SqueakCheck tests' runAllSqueakCheckTestsForMethodCategory)
	).
	^ aMenu
