private
accessorFor: selector
	selector numArgs > 0 ifTrue: [Error signal: 'Accessor must have arity 0'].
	
	^ {selector asString. '	^ ', selector asString , '.'} join: Character cr.