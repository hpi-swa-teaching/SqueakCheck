as yet unclassified
testInitHierarchyForClass
	| b |

	b := HierarchyBrowser new initHierarchyForClass: browser class.
	self assert: b selectedClassName = browser class name.