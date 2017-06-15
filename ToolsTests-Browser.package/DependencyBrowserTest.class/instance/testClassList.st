testing - class list
testClassList
	"Warning! When Collections' dependencies change, this test may start to fail!"
	self assert: #() equals: browser classList description: 'classList before package selection'.
	
	browser packageListIndex: (browser packageList indexOf: #Collections).
	self assert: #() equals: browser classList description: 'classList after selecting Collections'.
	
	browser packageDepsIndex: (browser packageDeps indexOf: #Compiler).
	self assert: #() equals: browser classList description: 'classList after selecting Compiler'.
	
	browser classDepsIndex: (browser classDeps indexOf: #Scanner).
		self assert: #(Character Symbol 'Symbol class') equals: browser classList description: 'classList after selecting Scanner class'.
	
	browser classListIndex: (browser classList indexOf: #Symbol).
	self assert: #(Character Symbol 'Symbol class') equals: browser classList description: 'classList after selecting Symbol class'.