*SqueakCheck-Integration
addTestMenu: aMenu
	<messageListMenu>
	<menuPriority:  415>
	
	aMenu addList: #(('new SqueakCheck test' #addAndOpenTestForSelectedMethod)).
	^ aMenu.