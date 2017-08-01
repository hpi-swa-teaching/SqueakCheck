*SqueakCheck-Integration
addMenuItemsToMessageCategoryMenu: aMenu
	<messageCategoryMenu>
	
	aMenu addList: #(('run all SqueakCheck tests' runAllSqueakCheckTestsForMethodCategory)).
	^ aMenu.
