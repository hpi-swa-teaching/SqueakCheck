SWT014-SqueakCheck
addTestMenuItems: testNames to: aMenu
	|subMenu|
	
	subMenu := MenuMorph new.
	testNames do: [:each | self addTestModificationMenuItems: each to: subMenu].
	aMenu add: (self testsMenuItemName) subMenu: subMenu.
	