testing - message list
testSelectedMessageName
	"Warning! When Collections' dependencies change, this test may start to fail!"
	self assert: browser selectedMessageName isNil.

	browser packageListIndex: (browser packageList indexOf: #Collections).
	self assert: browser selectedMessageName isNil.
	
	browser packageDepsIndex: (browser packageDeps indexOf: #Compiler).
	self assert: browser selectedMessageName isNil.
	
	browser classDepsIndex: (browser classDeps indexOf: #Scanner).
	self assert: browser selectedMessageName isNil.
	
	browser classListIndex: (browser classList indexOf: #Symbol).
	self assert: browser selectedMessageName isNil.
	
	browser messageListIndex: 1.
	self assert: browser selectedMessageName == #storeOn:.
	
	browser messageListIndex: 0.
	self assert: browser selectedMessageName isNil.