instance creation
newOnMessageCategory: aCategory inClass: aClass

	^ self
		openBrowserView: (self new
			setClass: aClass;
			selectMessageCategoryNamed: aCategory;
			openMessageCatEditString: nil)
		label: 'Message Category Browser (' , aClass name, ')'.