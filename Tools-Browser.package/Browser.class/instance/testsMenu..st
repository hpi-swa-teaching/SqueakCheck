SWT014-SqueakCheck
testsMenu: aMenu
	<classListMenu>
	<messageListMenu>
	<codePaneMenu>
	<menuPriority:  400>
	
	self namesOfTestsForSelectedMethod ifNotEmpty: [self addTestMenuItems: self compiledTestsForSelectedMethod to: aMenu].
	^ aMenu.