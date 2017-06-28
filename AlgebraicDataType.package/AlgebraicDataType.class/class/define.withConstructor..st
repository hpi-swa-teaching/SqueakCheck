instance creation
define: className withConstructor: selector
	^ self
		define: className
		in: AlgebraicDataType category
		ofType: AlgebraicDataType
		withConstructor: selector.