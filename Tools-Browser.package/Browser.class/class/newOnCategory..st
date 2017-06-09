instance creation
newOnCategory: aCategory
	"Browse the system category of the given name.  7/13/96 sw"

	"Browser newOnCategory: 'Interface-Browser'"

	| newBrowser newCat |
	newBrowser := self new..
	newCat := aCategory asSymbol.
	(newBrowser systemCategoryList includes: newCat)
		ifTrue: [ newBrowser selectSystemCategory: newCat ]
		ifFalse: [ ^ self inform: 'No such category' ].
	
	^ self 
		openBrowserView: (newBrowser openSystemCatEditString: nil)
		label: 'Classes in category ', aCategory
