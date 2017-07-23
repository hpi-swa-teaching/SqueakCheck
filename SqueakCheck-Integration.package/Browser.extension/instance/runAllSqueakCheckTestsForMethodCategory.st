*SqueakCheck-Integration
runAllSqueakCheckTestsForMethodCategory

	self selectedClass ifNil: [^ self].
	self methodsInSelectedCategory do: [:each|
		self runAllSqueakCheckTestsForMethodSelector: each].
