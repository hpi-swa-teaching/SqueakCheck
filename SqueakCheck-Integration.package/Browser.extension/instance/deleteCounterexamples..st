*SqueakCheck-Integration
deleteCounterexamples: aSelector
	
	(self counterexamples: aSelector) do: [ :each |
		self testClassForSelectedClass removeSelector: each selector ].
	self changed: #messageList.