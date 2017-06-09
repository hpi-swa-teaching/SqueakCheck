SWT014-Browsererweiterung
squeakCheckTestsMenu: aMenu
	<classListMenu>
	<messageListMenu>
	<codePaneMenu>
	<menuPriority:  400>
	self showSqueakCheckTestsForSelectedMethodAsValues ifNotEmpty: [
		self addSqueakCheckTestMenuItems: self showSqueakCheckTestsForSelectedMethodAsValues withName: 'SqueakCheck tests' to: aMenu].
	^aMenu