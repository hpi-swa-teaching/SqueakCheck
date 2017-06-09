instance creation
fullOnClass: aClass selector: aSelector
	"Open a new full browser set to class."

	^ self 
		openBrowserView: (self new
			setClass: aClass selector: aSelector;
			openEditString: nil)
		label: nil