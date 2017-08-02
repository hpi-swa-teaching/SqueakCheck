private
performTest

	^ self runningATheory
		ifTrue: [self performTest: currentExample]
		ifFalse: [super performTest].