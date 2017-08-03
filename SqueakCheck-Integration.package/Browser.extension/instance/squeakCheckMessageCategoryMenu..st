*SqueakCheck-Integration
squeakCheckMessageCategoryMenu: aMenu
	<messageCategoryMenu>

	self selectorsOfTestsForSelectedMethodCategory ifEmpty: [^ aMenu].
	aMenu addList: #(('run all SqueakCheck tests' runAllSqueakCheckTestsForMethodCategory)).
	^ aMenu.
