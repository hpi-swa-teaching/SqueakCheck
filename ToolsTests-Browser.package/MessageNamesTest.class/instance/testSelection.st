as yet unclassified
testSelection
	browser searchString: 'cull'.
	browser selectorListIndex: 1.
	browser messageListIndex: 1.
	self assert: (browser selection isKindOf: MethodReference).
	browser messageListIndex: 0.
	self assert: browser selection isNil.