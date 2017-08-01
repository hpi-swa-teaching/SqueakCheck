*SqueakCheck-Integration
deleteCounterExamples: aSelector
	| allCounterExamples relevantCounterExamples |
	
	allCounterExamples := self counterExamplesInClass: self classWithTestsForSelectedClass.
	relevantCounterExamples := allCounterExamples select: [ :each | each literals includes: aSelector ].
	relevantCounterExamples do: [ :each | self classWithTestsForSelectedClass removeSelector: each selector ].
	self changed: #messageList.