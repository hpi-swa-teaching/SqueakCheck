*SqueakCheck-Integration
deleteCounterexamples: aSelector
	
	(self counterexamples: aSelector) do: [ :each |
		self classWithTestsForSelectedClass removeSelector: each selector ].
	self changed: #messageList.