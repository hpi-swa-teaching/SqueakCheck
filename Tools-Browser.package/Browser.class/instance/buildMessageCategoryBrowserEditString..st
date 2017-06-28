message category functions
buildMessageCategoryBrowserEditString: aString 
	"Create and schedule a message category browser for the currently 
	selected	 message category. The initial text view contains the characters 
	in aString."

	^ self hasMessageCategorySelected ifTrue: [
		(self class
			newOnMessageCategory: self selectedMessageCategoryName
			inClass: self selectedClassOrMetaClass)
				"Select my message."
				selectMessageNamed: self selectedMessageName;
				yourself]