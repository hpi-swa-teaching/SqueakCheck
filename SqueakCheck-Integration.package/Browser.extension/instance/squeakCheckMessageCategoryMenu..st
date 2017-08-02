*SqueakCheck-Integration
squeakCheckMessageCategoryMenu: aMenu
	<messageCategoryMenu>

	self testsForSelectedMethodCategory ifEmpty: [^ aMenu].
	aMenu addList: #(('run all SqueakCheck tests' runAllSqueakCheckTestsForMethodCategory)).
	^ aMenu.
