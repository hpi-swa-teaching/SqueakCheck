*SqueakCheck-Integration
addTestMenu: aMenu
	<messageListMenu>
	<menuPriority:  415>
	
	^aMenu addList: #(
		('new SqueakCheckTest'	addAndOpenTest));
	yourself