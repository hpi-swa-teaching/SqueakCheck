*SqueakCheck-Integration
addTestMenuItems: compiledMethods to: aMenu
	|subMenu|
	
	subMenu := MenuMorph new.
	compiledMethods do: [:each | self addTestModificationMenuItems: each to: subMenu].
	aMenu add: (self testsMenuItemName) subMenu: subMenu.
	