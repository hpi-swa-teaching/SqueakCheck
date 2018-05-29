*SqueakCheck-Integration
deleteCounterexamples: aSelector
	
	(self counterexamplesFor: aSelector) do: [:each |
		self testClassForSelectedClass removeSelector: each selector].
	self changed: #messageList.