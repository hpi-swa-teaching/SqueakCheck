testing - message list
testSelectedMessageNameClassSide
	"Warning! When Collections' dependencies change, this test may start to fail!"
	self assert: browser selectedMessageName isNil.

	browser packageListIndex: (browser packageList indexOf: #'Chronology-Core').
	self assert: browser selectedMessageName isNil.
	
	browser packageDepsIndex: (browser packageDeps indexOf: #Collections).
	self assert: browser selectedMessageName isNil.
	
	browser classDepsIndex: (browser classDeps indexOf: #Array).
	self assert: browser selectedMessageName isNil.
	
	browser classListIndex: (browser classList indexOf: #'DateAndTime class').
	self assert: browser selectedMessageName isNil.
	
	browser messageListIndex: 1.
	self assert: browser selectedMessageName == #fromSeconds:.
