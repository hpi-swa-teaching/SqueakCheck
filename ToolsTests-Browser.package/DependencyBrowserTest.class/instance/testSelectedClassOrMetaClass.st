testing - metaclass
testSelectedClassOrMetaClass
	"Warning! When Collections' dependencies change, this test may start to fail!"
	self assert: browser selectedClassOrMetaClass isNil.

	browser packageListIndex: (browser packageList indexOf: #Collections).
	self assert: browser selectedClassOrMetaClass isNil.
	
	browser packageDepsIndex: (browser packageDeps indexOf: #Compiler).
	self assert: browser selectedClassOrMetaClass isNil.
	
	browser classDepsIndex: (browser classDeps indexOf: #Scanner).
	self assert: browser selectedClassOrMetaClass isNil.
	
	browser classListIndex: (browser classList indexOf: #Symbol).

	self deny: browser selectedClassOrMetaClass isNil.
	self assert: browser selectedClassOrMetaClass == Symbol.