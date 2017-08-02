*SqueakCheck-Integration
addTestMenuItems: methodSelectors to: aMenu
	|subMenu|
	
	subMenu := MenuMorph new.
	methodSelectors do: [:each | self addTestModificationMenuItems: each to: subMenu].
	aMenu add: 'SqueakCheck tests' subMenu: subMenu.
	