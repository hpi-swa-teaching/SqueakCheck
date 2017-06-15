testing - message list
testSelectedMessageClassSideShowsSource
	"Warning! When Collections' dependencies change, this test may start to fail!"

	browser packageListIndex: (browser packageList indexOf: #'Chronology-Core').
	browser packageDepsIndex: (browser packageDeps indexOf: #Collections).
	browser classDepsIndex: (browser classDeps indexOf: #'Array').
	browser classListIndex: (browser classList indexOf: #'DateAndTime class').
	browser messageListIndex: 1.
	self assert: browser selectedMessageName == #fromSeconds:.
	
	self assert: browser contents = (DateAndTime class sourceCodeAt: #fromSeconds:)
