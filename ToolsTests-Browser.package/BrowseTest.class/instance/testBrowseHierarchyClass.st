testing
testBrowseHierarchyClass
	"self debug: #testBrowseHierarchyClass"
	| browsersBefore browsersAfter opened |
	self ensureMorphic.
	
	browsersBefore := self currentHierarchyBrowsers.
	self withImmediatelyOpeningWindowsDo: [1 class browseHierarchy].
	browsersAfter := self currentHierarchyBrowsers.
	
	self assert:  (browsersAfter size  = (browsersBefore size + 1)).
	opened := browsersAfter removeAll: browsersBefore; yourself.
	self assert:  (opened size = 1).
	opened := opened asArray first.
	self assert: (opened model selectedClass == SmallInteger).
	
	opened delete
	
	
	