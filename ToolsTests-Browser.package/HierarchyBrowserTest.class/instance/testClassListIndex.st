as yet unclassified
testClassListIndex
	| expectedCat |
	expectedCat := [:i | (Smalltalk at: (browser classList at: i) withoutLeadingBlanks asSymbol) category ].
	browser initHierarchyForClass: browser class.
	self deny: browser classListIndex = 0.
	
	1 to: 3 do:
		[:n |
		browser classListIndex: n.
		self assert: browser classListIndex = n.
		self assert: browser selectedSystemCategory = (expectedCat value: n)]