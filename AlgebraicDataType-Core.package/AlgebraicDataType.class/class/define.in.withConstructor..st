instance creation
define: className in: category withConstructor: selector
	^ self
		define: className
		in: category
		ofType: AlgebraicDataType
		withConstructor: selector.