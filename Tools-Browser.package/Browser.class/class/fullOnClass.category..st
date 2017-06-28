instance creation
fullOnClass: aClass category: category

	^ self 
		openBrowserView: (self new
			setClass: aClass;
			selectMessageCategoryNamed: category;
			openEditString: nil)
		label: nil