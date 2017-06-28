testing
testSelectedClassOrMetaClass
	| firstClass |
	firstClass := browser messageList first actualClass.
	
	browser messageListIndex: 1.
	self assert: browser selectedClassOrMetaClass = firstClass.
	
	browser messageListIndex: 0.
	self assert: browser selectedClassOrMetaClass isNil.
	
	"And just to be sure:"
	browser messageListIndex: 1.
	self assert: browser selectedClassOrMetaClass = firstClass.