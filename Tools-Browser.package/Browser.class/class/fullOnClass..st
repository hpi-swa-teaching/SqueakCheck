instance creation
fullOnClass: aClass 
	"Open a new full browser set to class."

	^ self
		openBrowserView: (self new
			setClass: aClass;
			openEditString: nil)
		label: nil