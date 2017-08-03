*SqueakCheck-Integration
squeakCheckMessageListMenu: aMenu
	<messageListMenu>
	<menuPriority: 415>
	
	aMenu addList: #(('new SqueakCheck test' addAndOpenTestForSelectedMethod)).
	self selectorsOfTestsForSelectedMethod ifNotEmpty: [self addTestMenuItems: self selectorsOfTestsForSelectedMethod to: aMenu].
	^ aMenu.