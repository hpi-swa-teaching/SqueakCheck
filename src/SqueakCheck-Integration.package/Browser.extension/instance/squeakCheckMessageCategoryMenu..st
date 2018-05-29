*SqueakCheck-Integration
squeakCheckMessageCategoryMenu: aMenu
	<messageCategoryMenu>

	(self selectorsOfTestsFor: self methodSelectorsInSelectedMessageCategory) ifEmpty: [^ aMenu].
	aMenu addList: #(('run all SqueakCheck tests' runAllSqueakCheckTestsForMethodCategory)).
	^ aMenu.
