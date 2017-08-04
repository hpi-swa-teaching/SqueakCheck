private
generateIfNecessaryTestCase: aTheorySelector withCounterexample: anObject
	"More or less 'print out anObject (rejecting all weird characters) and turn it IntoCamelCase'."
	
	(self class >> aTheorySelector pragmaAt: #generateCounterexamples) ifNil: [^ self].
	self class
		compile: (self contentOfTestCase: aTheorySelector withCounterexample: anObject)
		classified: 'counterexamples'
		notifying: nil.