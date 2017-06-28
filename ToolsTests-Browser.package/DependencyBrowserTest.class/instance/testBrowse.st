testing - buttons
testBrowse
	| b |
	browser packageListIndex: (browser packageList indexOf: #Collections).
	browser packageDepsIndex: (browser packageDeps indexOf: #Compiler).
	browser classDepsIndex: (browser classDeps indexOf: #Scanner).
	browser classListIndex: (browser classList indexOf: #Symbol).
	browser messageListIndex: 1.

	b := browser browseMethodFull.
	self assert: b notNil.
	[self assert: b selectedMessageName = (browser messageList at: browser messageListIndex) ]
		ensure: [ToolBuilder default close: b topView]