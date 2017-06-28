initialize-release
setSelector: aSymbol
	"Make the receiver point at the given selector, in the currently chosen class"

	| aClass |
	aSymbol ifNil: [^ self].
	(aClass := self selectedClassOrMetaClass) ifNil: [^ self].
	(aClass organization categoryOfElement: aSymbol)
		ifNil: [^ self]
		ifNotNil: [:category |
			self
				selectMessageCategoryNamed: category;
				selectMessageNamed: aSymbol].