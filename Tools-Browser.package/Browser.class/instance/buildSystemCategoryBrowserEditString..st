system category functions
buildSystemCategoryBrowserEditString: aString 
	"Create and schedule a new system category browser with initial textual 
	contents set to aString."

	| newBrowser |
	self hasSystemCategorySelected
		ifTrue: 
			[newBrowser := self class new.
			newBrowser selectSystemCategory: self selectedSystemCategory.
			newBrowser setClass: self selectedClassOrMetaClass selector: self selectedMessageName.
			self class openBrowserView: (newBrowser openSystemCatEditString: aString)
				label: 'Classes in category ', newBrowser selectedSystemCategory]