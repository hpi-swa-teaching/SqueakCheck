SWT014-Browsererweiterung
addSqueakCheckTestMenuItems: anObject withName: name to: aMenu
	|subMenu|
	subMenu := MenuMorph new.
	anObject do: [:each | "subMenu add: each selector target: self selector: #openCompiledMethod: argument: each.
						   subMenu balloonTextForLastItem: 'open test in browser'" self addSqueakCheckTestModificationMenuItems: each to: subMenu.].
	aMenu add: name subMenu: subMenu.
	