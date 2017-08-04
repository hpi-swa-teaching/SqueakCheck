private
performTest

	^ self runningATheory
		ifTrue: [self performTest: self currentExample]
		ifFalse: [super performTest].