*SqueakCheck-Integration
squeakCheckMessageListMenu: aMenu
	<messageListMenu>
	<menuPriority: 415>
	
	aMenu addList: #(('new SqueakCheck test' addAndOpenTestForSelectedMethod)).
	self namesOfTestsForSelectedMethod ifNotEmpty: [self addTestMenuItems: self namesOfTestsForSelectedMethod to: aMenu].
	^ aMenu.