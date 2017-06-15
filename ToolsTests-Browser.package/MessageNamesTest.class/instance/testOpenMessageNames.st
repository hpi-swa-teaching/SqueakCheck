as yet unclassified
testOpenMessageNames
	| b |
	b := MessageNames openMessageNames.
	[self assert: (b isKindOf: MessageNames)]
		ensure: [ToolBuilder default close: b topView].